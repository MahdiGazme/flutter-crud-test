import 'package:get/get.dart';

import '../../pages/customer_information_page/common/customer_information_binding.dart';
import '../../pages/customer_information_page/views/customer_information_page.dart';
import '../../pages/customers_list_page/common/customers_list_binding.dart';
import '../../pages/customers_list_page/views/customers_list_page.dart';
import '../../pages/modify_customer_form/commons/customer_form_add_binding.dart';
import '../../pages/modify_customer_form/commons/customer_form_edit_binding.dart';
import '../../pages/modify_customer_form/controllers/customer_form_add_controller.dart';
import '../../pages/modify_customer_form/controllers/customer_form_edit_controller.dart';
import '../../pages/modify_customer_form/views/modify_customer_form_page.dart';
import 'route_names.dart';

class RoutePages {
  RoutePages._();

  static final shared = RoutePages._();

  final String initialRoute = RouteNames.shared.customersListPage;

  final List<GetPage<dynamic>> pages = [
    GetPage(
      name: RouteNames.shared.customersListPage,
      binding: CustomersListBinding(),
      page: () => const CustomersListPage(),
    ),
    GetPage(
      name: RouteNames.shared.customerInformation,
      binding: CustomerInformationBinding(),
      page: () => const CustomerInformationPage(),
    ),
    GetPage(
      name: RouteNames.shared.customerAddForm,
      binding: CustomerFormAddBinding(),
      page: () => const ModifyCustomerFormPage<CustomerFormAddController>(),
    ),
    GetPage(
      name: RouteNames.shared.customerEditForm,
      binding: CustomerFormEditBinding(),
      page: () => const ModifyCustomerFormPage<CustomerFormEditController>(),
    ),
  ];
}
