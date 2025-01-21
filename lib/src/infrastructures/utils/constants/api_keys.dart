class ApiKeys {
  ApiKeys._();

  static final shared = ApiKeys._();

  final String allCustomers = '/customers';

  String customer(final String id) => '/customers/$id';
}
