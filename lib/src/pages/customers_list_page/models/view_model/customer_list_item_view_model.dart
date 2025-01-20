class CustomerListItemViewModel {
  final String firstName;
  final String lastName;
  final DateTime birthDate;

  CustomerListItemViewModel({
    required this.firstName,
    required this.lastName,
    required this.birthDate,
  });

  factory CustomerListItemViewModel.fromJason(
          final Map<String, dynamic> json) =>
      CustomerListItemViewModel(
        firstName: json['firstName'],
        lastName: json['lastName'],
        birthDate: json['birthDate'],
      );
}
