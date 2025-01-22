import 'package:milky_http_client/milky_http_client.dart';

import '../../../infrastructures/resources/http_client_utils.dart';
import '../../../infrastructures/utils/constants/api_keys.dart';
import '../models/view_model/customer_list_item_view_model.dart';

class CustomersListRepository {
  final _httpClient = HttpClientUtils.shared.httpClient();

  Future<Either<String, List<CustomerListItemViewModel>>> getCustomers() async {
    final resultOrException = await _httpClient.get(
      ApiKeys.shared.getAllCustomers,
    );

    return resultOrException.fold(
      Left.new,
      (final result) => Right(
        (result.data as List)
            .map(
              (final element) => CustomerListItemViewModel.fromJason(
                element as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }
}
