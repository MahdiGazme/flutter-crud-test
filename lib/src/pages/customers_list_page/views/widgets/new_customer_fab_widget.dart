import 'package:flutter/material.dart';

class NewCustomerFabWidget extends StatelessWidget {
  final Function() onTap;

  const NewCustomerFabWidget({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => FloatingActionButton.extended(
        onPressed: onTap,
        label: const Text('Add Customer'),
      );
}
