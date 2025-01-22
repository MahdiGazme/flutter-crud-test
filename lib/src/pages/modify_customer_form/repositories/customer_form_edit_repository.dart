import 'package:milky_http_client/milky_http_client.dart';

import '../../../infrastructures/utils/constants/api_keys.dart';
import '../../../shared/models/view_model/customer_view_model.dart';
import '../models/dto/customer_dto.dart';
import 'modify_customer_form_repository.dart';

class CustomerFormEditRepository extends ModifyCustomerFormRepository {
  Future<Either<String, CustomerViewModel>> getCustomerData(
    final String id,
  ) async {
    final resultOrException = await httpClient.get(
      ApiKeys.shared.getCustomerForEdit(id),
    );

    return resultOrException.fold(
      Left.new,
      (final result) => Right(
        CustomerViewModel.fromJson(result.data),
      ),
    );
  }

  Future<Either<String, dynamic>> editCustomer(
    final String id,
    final CustomerDto data,
  ) async {
    final resultOrException = await httpClient.put(
      ApiKeys.shared.updateCustomer(id),
      data: data.toJson(),
    );

    return resultOrException.fold(
      Left.new,
      (final result) => Right(
        result.data,
      ),
    );
  }
}
