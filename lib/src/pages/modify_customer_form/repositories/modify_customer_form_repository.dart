import 'package:milky_http_client/milky_http_client.dart';

import '../../../infrastructures/resources/http_client_utils.dart';
import '../../../infrastructures/utils/constants/api_keys.dart';
import '../../../shared/models/view_model/customer_view_model.dart';

class ModifyCustomerFormRepository {
  final httpClient = HttpClientUtils.shared.httpClient();

  Future<Either<String, List<CustomerViewModel>>> checkForSimilarCustomer(
    final String firstName,
    final String lastName,
    final String dateOfBirth,
  ) async {
    final resultOrException = await httpClient.get(
      ApiKeys.shared.checkForSimilarCustomer(
        firstName,
        lastName,
        dateOfBirth,
      ),
    );

    return resultOrException.fold(
      Left.new,
      (final result) => Right(
        (result.data as List)
            .map(
              (final element) => CustomerViewModel.fromJson(
                element as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  Future<Either<String, List<CustomerViewModel>>> checkForSimilarEmail(
    final String email,
  ) async {
    final resultOrException = await httpClient.get(
      ApiKeys.shared.checkForSimilarEmail(
        email,
      ),
    );

    return resultOrException.fold(
      Left.new,
      (final result) => Right(
        (result.data as List)
            .map(
              (final element) => CustomerViewModel.fromJson(
                element as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }
}
