import 'package:flutter/material.dart';

import '../../../../infrastructures/theme/custom_theme.dart';

class CustomerFormCustomTextFieldWidget extends StatelessWidget {
  final String label;
  final String? hint;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? Function(String? value) validator;

  const CustomerFormCustomTextFieldWidget({
    required this.label,
    required this.controller,
    required this.validator,
    this.keyboardType,
    this.hint,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          label: Text(label),
          hintStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: CustomTheme.shared.textColor.shade400,
              ),
          hintText: hint,
        ),
      );
}
