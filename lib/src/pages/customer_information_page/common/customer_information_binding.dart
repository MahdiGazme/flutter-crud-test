import 'package:get/get.dart';

import '../controller/customer_information_controller.dart';
import '../repository/customer_information_repository.dart';

class CustomerInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CustomerInformationController(
        CustomerInformationRepository(),
      ),
    );
  }
}
