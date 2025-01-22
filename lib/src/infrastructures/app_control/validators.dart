import '../utils/constants/regex_patterns.dart';

class Validators {
  Validators._();

  static final shared = Validators._();

  String? regularValidator(final String? value) {
    if (value == null || value.isEmpty) {
      return 'Field can not be empty';
    }

    return null;
  }

  String? emailValidator(final String? value) {
    final regex = RegExp(RegexPatterns.regexPatterns.email);
    final matches = regex.hasMatch(value ?? '');

    if (value == null || !matches) {
      return 'Email is not valid';
    }

    return null;
  }

  String? phoneNumberValidator(final String? value) {
    final regex = RegExp(RegexPatterns.regexPatterns.usPhoneNumber);
    final matches = regex.hasMatch(value ?? '');

    if (value == null || !matches) {
      return 'Phone Number is not a US valid number';
    }

    return null;
  }
}
