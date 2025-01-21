import 'package:milky_http_client/milky_http_client.dart';

import '../../../infrastructures/resources/http_client_utils.dart';
import '../../../infrastructures/utils/constants/api_keys.dart';
import '../models/view_model/customer_view_model.dart';

class CustomerInformationRepository {
  final _httpClient = HttpClientUtils.shared.httpClient();

  Future<Either<String, CustomerViewModel>> getCustomerData(
      final String id) async {
    final resultOrException = await _httpClient.get(
      ApiKeys.shared.customer(id),
    );

    return resultOrException.fold(
        Left.new,
        (final result) => Right(
              CustomerViewModel.fromJson(result.data),
            ));
  }

  Future<Either<String, dynamic>> deleteCustomer(final String id) async {
    final resultOrException = await _httpClient.delete(
      ApiKeys.shared.customer(id),
    );

    return resultOrException.fold(
      Left.new,
      (final result) => Right(
        result.data,
      ),
    );
  }
}
