import 'package:get/get.dart';

import '../controllers/customer_form_add_controller.dart';
import '../repositories/customer_form_add_repository.dart';

class CustomerFormAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CustomerFormAddController(
        CustomerFormAddRepository(),
      ),
    );
  }
}
