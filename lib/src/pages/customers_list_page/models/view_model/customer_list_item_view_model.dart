class CustomerListItemViewModel {
  final String id;
  final String firstName;
  final String lastName;

  CustomerListItemViewModel({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  factory CustomerListItemViewModel.fromJason(
          final Map<String, dynamic> json) =>
      CustomerListItemViewModel(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
      );
}
