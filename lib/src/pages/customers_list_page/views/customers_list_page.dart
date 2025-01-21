import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/custom_scaffold.dart';
import '../../../shared/widgets/page_state_provider.dart';
import '../controller/customers_list_controller.dart';
import 'widgets/customers_list_widget.dart';
import 'widgets/new_customer_fab_widget.dart';

class CustomersListPage extends GetView<CustomersListController> {
  const CustomersListPage({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => CustomScaffold(
        floatingActionButton: _actionButton(),
        appBar: _appBar(),
        body: _stateProvider(),
      );

  Widget _actionButton() => NewCustomerFabWidget(
        onTap: controller.onAddCustomerButtonTap,
      );

  AppBar _appBar() => AppBar(
        title: const Text('Customers List'),
      );

  PageStateProvider _stateProvider() => PageStateProvider(
        onRetry: controller.onRetry,
        state: controller.state,
        page: _body,
      );

  Widget _body() => Column(
        children: [
          _listView(),
        ],
      );

  Widget _listView() => const Expanded(
        child: CustomersListWidget(),
      );
}
