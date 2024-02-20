import 'package:flutter/material.dart';
import 'package:uikit/src/components/text_fields/filter_text_input.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField({
    super.key,
    this.labelText,
    this.initialText,
    this.autofocus = false,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.isActive = true,
    this.isOnlyView = false,
    this.prefix,
    this.prefixIcon,
    this.suffixIcon,
    this.hint,
    this.withEditLine = false,
    this.expandedHeight,
    this.onEditingComplete,
    this.onChanged,
    this.onTap,
    this.maxLines = 1,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    this.hintStyle,
    this.borderFocusedColor,
    this.maxInputTextLength,
    this.customInputFormatters,
    this.currencySymbol,
    this.errorText,
    this.onError,
    this.autoValidate = false,
    this.focusNode,
    this.crossAxisAlignment,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? initialText;
  final TextInputType? keyboardType;
  final bool autofocus;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final String? prefix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hint;
  final bool isActive;
  final bool withEditLine;
  final bool isOnlyView;
  final EdgeInsets padding;
  final double? expandedHeight;
  final void Function(String)? onEditingComplete;
  final VoidCallback? onTap;
  final int maxLines;
  final TextStyle? hintStyle;
  final Color? borderFocusedColor;
  final void Function(String)? onChanged;
  final int? maxInputTextLength;
  final CustomInputFormatter? customInputFormatters;
  final String? currencySymbol;
  final String? errorText;
  final ValueSetter<String?>? onError;
  final bool autoValidate;
  final FocusNode? focusNode;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  State<StatefulWidget> createState() {
    return _OutlineBorderTextFormField();
  }
}

class _OutlineBorderTextFormField extends State<CustomInputField> {
  late final TextEditingController controller;
  bool isFocused = false;
  bool isError = false;
  String errorString = '';

  String? _validationError;

  bool get hasValidationError =>
      //  widget.hasError ||
      _validationError != null;

  //     ||
  // (widget.initialErrorText != null);

//  bool get isError => _errorString = !null;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? TextEditingController();
    if (widget.initialText != null) {
      controller.text = widget.initialText ?? '';
    }
    controller.addListener(_listener);
  }

  @override
  void didUpdateWidget(covariant CustomInputField oldWidget) {
    if (widget.initialText != null &&
        controller.value.text != widget.initialText) {
      controller.text = widget.initialText!;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _listener() {
    setState(() {
      widget.onChanged?.call(controller.text);
    });
  }

  final borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide.none,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    errorString = widget.errorText ?? '';
    isError = errorString != '';
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus();
        widget.onTap?.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Focus(
            onFocusChange: (focus) {
              isFocused = focus;
              //     widget.onFocusChanged?.call(focus);
              if (controller.value.text.isNotEmpty) {
                _validation(controller.value.text);
              }
              // setState(() {
              //   isActive = focus;
              // });
            },
            child: Container(
              height: widget.expandedHeight,
              padding: widget.padding,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                border: Border.all(
                  color: isError
                      ? colorScheme.error
                      : widget.borderFocusedColor != null
                          ? FocusScope.of(context).hasFocus
                              ? widget.borderFocusedColor!
                              : theme.dividerColor
                          : theme.dividerColor,
                ),
              ),
              child: Row(
                crossAxisAlignment:
                    widget.crossAxisAlignment ?? CrossAxisAlignment.center,
                children: [
                  if (widget.prefixIcon != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: widget.prefixIcon,
                    ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if ((widget.labelText != null &&
                                controller.value.text.isNotEmpty) ||
                            (isFocused && widget.labelText != null))
                          Text(
                            widget.labelText ?? '',
                            style: isError
                                ? textTheme.labelSmall
                                    ?.copyWith(color: colorScheme.error)
                                : textTheme.labelSmall,
                          ),
                        TextFormField(
                          focusNode: widget.focusNode,
                          maxLines: widget.maxLines,
                          minLines: 1,
                          maxLength: widget.maxInputTextLength ?? 1000,
                          inputFormatters: [
                            ...widget.customInputFormatters?.scenario(
                                  currencySymbol: widget.currencySymbol,
                                ) ??
                                CustomInputFormatter.none.scenario(),
                          ],
                          onFieldSubmitted: (s) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          onSaved: (e) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          onEditingComplete: () {
                            widget.onEditingComplete
                                ?.call(controller.value.text);
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          onTapOutside: (e) {
                            widget.onEditingComplete
                                ?.call(controller.value.text);
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          enabled: !widget.isOnlyView ||
                              (widget.isActive && !widget.isOnlyView),
                          controller: controller,
                          scrollPadding: EdgeInsets.only(
                            bottom:
                                MediaQuery.of(context).viewInsets.bottom + 80,
                          ),
                          autofocus: widget.autofocus,
                          keyboardType: widget.keyboardType,
                          textInputAction: TextInputAction.newline,
                          style: textTheme.bodyMedium!.copyWith(
                            color: widget.isActive ? null : theme.hintColor,
                          ),
                          decoration: InputDecoration(
                            labelText: widget.labelText,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintText: widget.hint,
                            prefix: widget.prefix != null
                                ? Text(widget.prefix ?? '')
                                : null,
                            counterText: '',
                            counterStyle:
                                const TextStyle(fontSize: 0, height: 0.01),
                            hintStyle: textTheme.bodyMedium
                                ?.copyWith(color: theme.hintColor),
                            contentPadding: const EdgeInsets.all(2),
                            border: borderStyle,
                            enabledBorder: borderStyle.copyWith(),
                            errorBorder: borderStyle,
                            focusedErrorBorder: borderStyle,
                            disabledBorder: borderStyle,
                            focusedBorder: borderStyle,
                            isDense: true,
                          ),
                        ),
                        if (widget.withEditLine)
                          Column(
                            children: [
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Редагувати',
                                style: textTheme.labelMedium
                                    ?.copyWith(color: colorScheme.secondary),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  if (widget.suffixIcon != null)
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: widget.suffixIcon,
                    ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isError,
            child: Container(
              padding: const EdgeInsets.only(left: 15.0, top: 2.0),
              child: Text(
                errorString,
                style: const TextStyle(
                  fontSize: 10.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? _validation(String? textValue) {
    if (widget.validator != null) {
      final error = widget.validator?.call(textValue);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          setState(() {
            _validationError = error;
          });
        }
      });
      if (error != null) {
        widget.onError?.call(error);
      }
      return error;
    }
    return null;
  }
}

extension Utility on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild?.context == null);
  }
}
