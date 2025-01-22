import 'package:get/get.dart';

import '../controllers/customer_form_edit_controller.dart';
import '../repositories/customer_form_edit_repository.dart';

class CustomerFormEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CustomerFormEditController(
        CustomerFormEditRepository(),
      ),
    );
  }
}
