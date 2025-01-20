import 'package:get/get.dart';

import '../controller/customers_list_controller.dart';

class CustomersListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      CustomersListController.new,
    );
  }
}
