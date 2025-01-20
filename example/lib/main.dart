import 'package:flutter/material.dart';
import 'package:flutter_crud_test/flutter_crud_test.dart';

import 'my_app.dart';

void main() async {
  _initUrl(
    Flavor.stage,
  );

  runApp(const MyApp());
}

void _initUrl(
  final Flavor flavor,
) {
  final String baseUrl = _getBaseUrl(flavor);

  FlutterCrudTestParameters.shared.baseUrl = baseUrl;
}

String _getBaseUrl(final Flavor flavor) {
  if (flavor == Flavor.prod) {
    return '';
  } else if (flavor == Flavor.stage) {
    return 'http://localhost:3000';
  } else {
    return '';
  }
}

enum Flavor {
  stage,
  prod,
}
