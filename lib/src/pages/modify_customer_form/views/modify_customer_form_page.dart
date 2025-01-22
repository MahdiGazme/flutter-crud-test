import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructures/utils/utils.dart';
import '../../../shared/widgets/custom_scaffold.dart';
import '../../../shared/widgets/page_state_provider.dart';
import '../controllers/customer_form_add_controller.dart';
import '../controllers/modify_customer_form_controller.dart';
import 'widget/customer_form_widget.dart';

class ModifyCustomerFormPage<T extends ModifyCustomerFormController>
    extends GetView<T> {
  const ModifyCustomerFormPage({super.key});

  @override
  Widget build(final BuildContext context) => CustomScaffold(
        appBar: _appBar(),
        body: _stateProvider(),
      );

  Widget _stateProvider() => PageStateProvider(
        state: controller.state,
        onRetry: controller.onRetry,
        page: _body,
      );

  Widget _body() => Column(
        children: [
          _form(),
          Utils.shared.mediumVerticalSpacer,
          _button(),
        ],
      );

  Widget _form() => Expanded(
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: Utils.shared.mediumPadding,
              child: CustomerFormWidget<T>(),
            ),
          ),
        ),
      );

  Widget _button() => ElevatedButton(
        onPressed: controller.onAddOrEditButtonTap,
        child: Text(
          T == CustomerFormAddController ? 'Add Customer' : 'Edit Customer',
        ),
      );

  AppBar _appBar() => AppBar(
        title: Text(
          T == CustomerFormAddController ? 'Add new Customer' : 'Edit Customer',
        ),
      );
}
