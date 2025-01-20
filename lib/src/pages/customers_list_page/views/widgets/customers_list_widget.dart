import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/customers_list_controller.dart';
import 'customer_list_item_widget.dart';
import 'customers_list_empty_widget.dart';

class CustomersListWidget extends GetView<CustomersListController> {
  const CustomersListWidget({super.key});

  @override
  Widget build(final BuildContext context) => Obx(
        () => controller.customers.isEmpty
            ? const CustomersListEmptyWidget()
            : _listView(),
      );

  Widget _listView() => ListView.builder(
        itemCount: controller.customers.length,
        itemBuilder: (final context, final index) => _listItemWidget(index),
      );

  Widget _listItemWidget(final int index) => CustomerListItemWidget(
        item: controller.customers[index],
        onTap: controller.onCustomerTap,
      );
}
