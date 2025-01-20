import 'package:milky_http_client/milky_http_client.dart';

import '../parameters/flutter_crud_test_parameters.dart';
import '../utils/utils.dart';

class HttpClientUtils {
  HttpClientUtils._();

  static final shared = HttpClientUtils._();

  MilkyHttpClient httpClient({
    final String? baseUrl,
    final Map<String, dynamic>? headers,
    final bool showError = true,
    final bool cacheMode = false,
  }) =>
      MilkyHttpClient(
        baseUrl: baseUrl ?? FlutterCrudTestParameters.shared.baseUrl,
        headers: headers,
        handleExceptionCallBack: (final exception) =>
           _handleException(exception, showError: showError),
        sendTimeout: Utils.shared.defaultTimeOutDuration,
        connectTimeout: Utils.shared.defaultTimeOutDuration,
        receiveTimeout: Utils.shared.defaultTimeOutDuration,
        interceptors: [],
      );

  void _handleException(
    final String exceptionKey, {
    final bool showError = true,
  }) {
    if (exceptionKey == 'cancel') {
      return;
    }

      if (showError) {

      }
    }
    //
    // String _translateException(final String exceptionKey) {
    //   const String prefix = 'flutter_sample_app_exceptions';
    //   final String key = '$prefix$exceptionKey';
    //   return 'Other - $exceptionKey';
    //
    //   // return _isKnownException(key) ? key.tr : 'Other - $exceptionKey';
    // }

// bool _isKnownException(final String exceptionKey) =>
//     Locales.fa_IR.containsKey(exceptionKey);
//   }
}
