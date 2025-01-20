import 'package:flutter/material.dart';

import '../../infrastructures/theme/custom_theme.dart';

class RetryButton extends StatelessWidget {
  final void Function()? onTap;

  const RetryButton({this.onTap, super.key});

  @override
  Widget build(final BuildContext context) => _body();

  Widget _body() => Center(
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(CustomTheme.shared.warningColor),
          ),
          child: const Text('Retry'),
        ),
      );
}
