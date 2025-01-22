class RegexPatterns {
  RegexPatterns._();

  static final regexPatterns = RegexPatterns._();

  String email = r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$';
  String usPhoneNumber =
      r'^(\+1[-.\s]?|1[-.\s]?)?(\d{3}|\(\d{3}\))[-.\s]?\d{3}[-.\s]?\d{4}$';
}
