import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructures/utils/utils.dart';
import '../../../shared/widgets/custom_scaffold.dart';
import '../../../shared/widgets/page_state_provider.dart';
import '../controller/customer_information_controller.dart';
import 'widgets/customer_information_header_widget.dart';
import 'widgets/customer_information_item_widget.dart';

class CustomerInformationPage extends GetView<CustomerInformationController> {
  const CustomerInformationPage({super.key});

  @override
  Widget build(final BuildContext context) => CustomScaffold(
        appBar: _appBar(),
        body: _stateProvider(context),
      );

  AppBar _appBar() => AppBar(
        title: const Text('Customer Information'),
      );

  Widget _stateProvider(final BuildContext context) => PageStateProvider(
        state: controller.state,
        onRetry: controller.onRetry,
        page: () => _body(context),
      );

  Widget _body(final BuildContext context) => Card(
        child: Padding(
          padding: Utils.shared.smallPadding,
          child: _bodyContent(),
        ),
      );

  Widget _bodyContent() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomerInformationHeaderWidget(),
          Utils.shared.largeVerticalSpacer,
          _dateOfBirth(),
          Utils.shared.smallVerticalSpacer,
          _email(),
          Utils.shared.smallVerticalSpacer,
          _bankAccount(),
        ],
      );

  Widget _dateOfBirth() => CustomerInformationItemWidget(
        text: Utils.shared.formatDateTime(controller.customer!.dateOfBirth),
        icon: Icons.calendar_month_rounded,
      );

  Widget _email() => CustomerInformationItemWidget(
        text: controller.customer!.email,
        icon: Icons.alternate_email_outlined,
      );

  Widget _bankAccount() => CustomerInformationItemWidget(
        text: controller.customer!.bankAccountNumber,
        icon: Icons.credit_card,
      );
}
