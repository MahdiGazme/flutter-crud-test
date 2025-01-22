import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructures/theme/custom_theme.dart';
import '../../../../infrastructures/utils/utils.dart';
import '../../controller/customer_information_controller.dart';

class CustomerInformationHeaderWidget
    extends GetView<CustomerInformationController> {
  const CustomerInformationHeaderWidget({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _avatar(),
          Utils.shared.mediumHorizontalSpacer,
          _nameAndNumber(context),
          _editButton(),
          _deleteButton()
        ],
      );

  Widget _nameAndNumber(final BuildContext context) => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _name(context),
            _phoneNumber(context),
          ],
        ),
      );

  Widget _phoneNumber(final BuildContext context) => Text(
        controller.customer!.phoneNumber,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: CustomTheme.shared.textColor.shade400,
            ),
      );

  Widget _name(final BuildContext context) => Text(
        '${controller.customer!.firstName} ${controller.customer!.lastName}',
        style: Theme.of(context).textTheme.titleMedium,
      );

  Widget _deleteButton() => Obx(
        () => IconButton(
          onPressed: controller.isDeleting.value
              ? null
              : controller.onDeleteCustomerTap,
          icon: Icon(
            Icons.delete,
            color: CustomTheme.shared.dangerColor,
          ),
        ),
      );

  Widget _editButton() => IconButton(
        onPressed: controller.onEditCustomerTap,
        icon: Icon(
          Icons.edit,
          color: CustomTheme.shared.primaryColor,
        ),
      );

  Widget _avatar() => CircleAvatar(
        radius: Utils.shared.mediumAvatarSize,
        child: const Icon(
          Icons.person,
        ),
      );
}
