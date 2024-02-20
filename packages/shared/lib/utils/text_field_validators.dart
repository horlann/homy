class CustomValidators {
  static String? emailValidator(String? value) {
    final emailRegex = RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+(\.?[a-zA-Z]+)$');

    if ((value == null || value.isEmpty) || !emailRegex.hasMatch(value)) {
      return 'Incorrect Email';
    }
    return null;
  }

  static String? noEmptyValidator(
      {String? value, String? text = 'Заповніть поле'}) {
    if (value == null || value.isEmpty) {
      return text;
    }
    return null;
  }

  static String? lengthValidator(
    String? value,
    String errorText, {
    int min = 0,
  }) {
    if (value == null || value.length < min) {
      return errorText;
    }
    return null;
  }
}
