import 'package:milky_http_client/milky_http_client.dart';

import '../../../infrastructures/utils/constants/api_keys.dart';
import '../models/dto/customer_dto.dart';
import 'modify_customer_form_repository.dart';

class CustomerFormAddRepository extends ModifyCustomerFormRepository {
  Future<Either<String, dynamic>> addNewCustomer(final CustomerDto data) async {
    final resultOrException = await httpClient.post(
      ApiKeys.shared.addCustomer,
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
