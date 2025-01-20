class RegexPatterns {
  RegexPatterns._();

  static final regexPatterns = RegexPatterns._();

  String password = r'^[A-Za-z\d]{5,}$';

  String email =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}"
      r'[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$';
}
