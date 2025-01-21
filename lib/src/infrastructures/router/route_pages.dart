import 'package:get/get.dart';

import '../../pages/customer_information_page/common/customer_information_binding.dart';
import '../../pages/customer_information_page/views/customer_information_page.dart';
import '../../pages/customers_list_page/common/customers_list_binding.dart';
import '../../pages/customers_list_page/views/customers_list_page.dart';
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
  ];
}
