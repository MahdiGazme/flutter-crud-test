import 'package:get/get.dart';

import '../../../infrastructures/app_control/data_passing_service.dart';
import '../../../infrastructures/router/route_names.dart';
import '../../../shared/enums/page_state_enum.dart';
import '../models/view_model/customer_list_item_view_model.dart';
import '../repository/customers_list_repository.dart';

class CustomersListController extends GetxController {
  late final CustomersListRepository _repository;

  CustomersListController(this._repository);

  final state = PageStateEnum.loading.obs;

  final customers = <CustomerListItemViewModel>[].obs;

  @override
  void onInit() {
    _getCustomers();
    super.onInit();
  }

  Future<void> onRetry() async {
    state.value = PageStateEnum.loading;
    await _getCustomers();
  }

  Future<void> _getCustomers() async {
    final resultOrException = await _repository.getCustomers();

    resultOrException.fold(
      (final exception) => state.value = PageStateEnum.retry,
      (final result) {
        customers.addAll(result);
        state.value = PageStateEnum.success;
      },
    );
  }

  Future<void> _onRefresh() async {
    state.value = PageStateEnum.loading;
    customers.clear();
    await _getCustomers();
  }

  Future<void> onCustomerTap(final String id) async {
    await Get.toNamed(RouteNames.shared.customerInformation, parameters: {
      ':id': id,
    });

    final dataPassService = DataPassingService();

    final result = dataPassService.getData;
    // in-case if customer data has been edited or deleted, list will refresh
    if (result) {
      await _onRefresh();
      // its necessarily to set the data to false for future uses
      dataPassService.setData = false;
    }
  }

  Future<void> onAddCustomerButtonTap() async {
    final result = await Get.toNamed(
      RouteNames.shared.customerAddForm,
    );

    // in-case a new customer added the list will be refresh
    if (result != null && result == true) {
      await _onRefresh();
    }
  }
}
