import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/custom_scaffold.dart';
import '../controller/customers_list_controller.dart';
import 'widgets/customers_list_widget.dart';
import 'widgets/new_customer_fab_widget.dart';

class CustomersListPage extends GetView<CustomersListController> {
  const CustomersListPage({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => CustomScaffold(
        floatingActionButton: NewCustomerFabWidget(
          onTap: controller.onAddCustomerButtonTap,
        ),
        appBar: AppBar(
          title: const Text('Customers List'),
        ),
        body: const Column(
          children: [
            Expanded(
              child: CustomersListWidget(),
            ),
          ],
        ),
      );
}
