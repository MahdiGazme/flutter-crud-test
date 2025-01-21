class CustomerViewModel {
  final String id;
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  final String email;
  final String phoneNumber;
  final String bankAccountNumber;

  CustomerViewModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.email,
    required this.bankAccountNumber,
  });

  factory CustomerViewModel.fromJson(final Map<String, dynamic> json) =>
      CustomerViewModel(
        id: json['id'] ?? '',
        firstName: json['firstName'] ?? 'Unknown',
        lastName: json['lastName'] ?? 'Unknown',
        dateOfBirth: json['dateOfBirth'] == null
            ? DateTime.now().toLocal()
            : DateTime.parse(json['dateOfBirth']).toLocal(),
        phoneNumber: json['phoneNumber'] ?? 'No Data',
        email: json['email'] ?? 'No Data',
        bankAccountNumber: json['bankAccountNumber'] ?? 'No Data',
      );
}
