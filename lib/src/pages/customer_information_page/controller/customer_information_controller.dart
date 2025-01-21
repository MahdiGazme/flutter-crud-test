import 'package:get/get.dart';

import '../../../infrastructures/app_control/data_passing_service.dart';
import '../../../infrastructures/router/route_names.dart';
import '../../../shared/enums/page_state_enum.dart';
import '../models/view_model/customer_view_model.dart';
import '../repository/customer_information_repository.dart';

class CustomerInformationController extends GetxController {
  final CustomerInformationRepository _repository;

  CustomerInformationController(this._repository);

  late final String customerId;

  final state = PageStateEnum.loading.obs;
  final isDeleting = false.obs;
  late final CustomerViewModel customer;

  @override
  void onInit() {
    customerId = Get.parameters[':id'] ?? '';
    _getCustomerData();
    super.onInit();
  }

  Future<void> _getCustomerData() async {
    final resultOrException = await _repository.getCustomerData(customerId);

    resultOrException.fold(
      (final exception) => state.value = PageStateEnum.retry,
      (final result) {
        customer = result;
        state.value = PageStateEnum.success;
      },
    );
  }

  void onRetry() => _refreshCustomerData();

  Future<void> _refreshCustomerData() async {
    state.value = PageStateEnum.loading;
    await _getCustomerData();
  }

  Future<void> onDeleteCustomerTap() async {
    isDeleting.value = true;
    final resultOrException = await _repository.deleteCustomer(customerId);

    resultOrException.fold(
      (final exception) => isDeleting.value = false,
      (final result) {
        Get.back(
          result: true,
          closeOverlays: true,
        );
      },
    );
  }

  Future<void> onEditCustomerTap() async {
    final result = await Get.toNamed(
      RouteNames.shared.customerEditForm,
      parameters: {
        'id': customerId,
      },
    );

    if (result is bool && result) {
      await _refreshCustomerData();

      final dataService = Get.find<DataPassingService>();
      dataService.setData = true;
    }
  }
}
