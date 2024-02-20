import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';

enum CustomInputFormatter {
  /// No input formatter
  none,

  /// Format for phone numbers
  digitsOnly,

  /// Format for address input
  address,

  /// Format for input name and surname
  nameSurname,

  /// Format for input comment
  comment,

  /// Format for currency input
  currency,

  ///
  phone,

  /// Format for input promo code
  promoCode,
}

extension CustomInputFormatterExtension on CustomInputFormatter {
  List<TextInputFormatter> scenario({String? currencySymbol}) {
    switch (this) {
      case CustomInputFormatter.none:
        return [FilteringTextInputFormatter.allow(RegExp('.*'))];
      case CustomInputFormatter.digitsOnly:
        return [FilteringTextInputFormatter.digitsOnly];
      case CustomInputFormatter.address:
        return [
          FilteringTextInputFormatter.allow(
            RegExp(r'[a-zA-Zа-яА-ЯґҐєЄіІїЇ0-9\s.,\/:\-—"]'),
          ),
        ];
      case CustomInputFormatter.nameSurname:
        return [
          FilteringTextInputFormatter.allow(
            RegExp(r'[a-zA-Zа-яА-ЯґҐєЄіІїЇ\s\-]'),
          ),
        ];
      case CustomInputFormatter.comment:
        return [
          FilteringTextInputFormatter.allow(
            RegExp(r'[a-zA-Zа-яА-ЯґҐєЄіІїЇ0-9\s.,!?():;@\-—"]'),
          ),
        ];
      case CustomInputFormatter.currency:
        return [CurrencyInputFormatter(currencySymbol: currencySymbol ?? '\$')];
      case CustomInputFormatter.phone:
        return [
          //TODO() fix this formatter to support all countries
          MaskedInputFormatter('## ### ## ##'),
          FilteringTextInputFormatter.allow(
            RegExp('[0-9_ ]*\$'),
          ),
        ];
      case CustomInputFormatter.promoCode:
        return [
          FilteringTextInputFormatter.allow(
            RegExp('[a-zA-Z0-9"]'),
          ),
        ];
      default:
        return [FilteringTextInputFormatter.allow(RegExp('.*'))];
    }
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  CurrencyInputFormatter({required this.currencySymbol});

  final String currencySymbol;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final value = int.tryParse(
      newValue.text
          .replaceAll(RegExp(r'[ \$]'), '')
          .replaceAll(currencySymbol, ''),
    );
    String newText;
    if (value == null || value == 0) {
      newText = '';
      return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    } else {
      newText = '$value $currencySymbol';
    }
    return TextEditingValue(
      text: newText,
      selection:
          TextSelection.collapsed(offset: newText.indexOf(currencySymbol) - 1),
    );
  }
}
