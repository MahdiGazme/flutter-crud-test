import 'package:flutter/material.dart';

import '../../../../infrastructures/theme/custom_theme.dart';
import '../../../../infrastructures/utils/utils.dart';
import '../../models/view_model/customer_list_item_view_model.dart';

class CustomerListItemWidget extends StatelessWidget {
  final CustomerListItemViewModel item;
  final Function(String id) onTap;

  const CustomerListItemWidget({
    required this.item,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Card(
        child: _inkWell(context),
      );

  Widget _inkWell(final BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(
          CustomTheme.shared.borderRadiusSemiRound,
        ),
        onTap: () => onTap(item.id),
        child: _itemBody(context),
      );

  Widget _itemBody(final BuildContext context) => Padding(
        padding: Utils.shared.smallPadding,
        child: _bodyContent(context),
      );

  Widget _bodyContent(final BuildContext context) => Row(
        children: [
          _avatar(),
          Utils.shared.mediumHorizontalSpacer,
          _fullName(context)
        ],
      );

  Widget _fullName(final BuildContext context) => Text(
        '${item.firstName} ${item.lastName}',
        style: Theme.of(context).textTheme.titleMedium,
      );

  Widget _avatar() => CircleAvatar(
        radius: Utils.shared.smallAvatarSize,
        child: const Icon(
          Icons.person,
        ),
      );
}
