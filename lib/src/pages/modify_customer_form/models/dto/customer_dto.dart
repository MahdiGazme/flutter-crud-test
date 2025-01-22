class CustomerDto {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  final String email;
  final String bankAccount;
  final String phoneNumber;

  const CustomerDto({
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.email,
    required this.bankAccount,
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'dateOfBirth': dateOfBirth.toUtc().toIso8601String(),
        'email': email,
        'bankAccountNumber': bankAccount,
        'phoneNumber': phoneNumber,
      };
}
