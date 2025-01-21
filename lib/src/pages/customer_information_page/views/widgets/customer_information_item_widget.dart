import 'package:flutter/material.dart';

import '../../../../infrastructures/utils/utils.dart';

class CustomerInformationItemWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomerInformationItemWidget({
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Row(
        children: [
          Icon(
            icon,
          ),
          Utils.shared.smallHorizontalSpacer,
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      );
}
