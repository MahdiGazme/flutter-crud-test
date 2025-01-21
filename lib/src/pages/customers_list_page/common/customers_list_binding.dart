import 'package:get/get.dart';

import '../controller/customers_list_controller.dart';
import '../repository/customers_list_repository.dart';

class CustomersListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CustomersListController(
        CustomersListRepository(),
      ),
    );
  }
}
