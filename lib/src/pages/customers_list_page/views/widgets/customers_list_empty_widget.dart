import 'package:flutter/material.dart';

class CustomersListEmptyWidget extends StatelessWidget {
  const CustomersListEmptyWidget({super.key});

  @override
  Widget build(final BuildContext context) => const Center(
        child: Text('No Customers yet !!!'),
      );
}
