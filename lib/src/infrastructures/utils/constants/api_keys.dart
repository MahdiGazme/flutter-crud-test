class ApiKeys {
  ApiKeys._();

  static final shared = ApiKeys._();

  // --- Customers List ---
  final String getAllCustomers = '/customers';

  // --- Customer Information ---
  String getCustomerInformation(final String id) => '/customers/$id';

  // --- Customer Form ---
  String addCustomer = '/customers';

  String getCustomerForEdit(final String id) => '/customers/$id';

  String updateCustomer(final String id) => '/customers/$id';

  String checkForSimilarCustomer(
    final String firstName,
    final String lastName,
    final String dateOfBirth,
  ) =>
      '/customers/?firstName=$firstName&lastName=$lastName&dateOfBirth=$dateOfBirth';

  String checkForSimilarEmail(final String email) => '/customers?email=$email';
}
