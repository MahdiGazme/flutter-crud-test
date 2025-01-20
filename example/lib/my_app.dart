import 'package:flutter/material.dart';
import 'package:flutter_crud_test/flutter_crud_test.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) => GetMaterialApp(
        title: 'CRUD Test',
        getPages: RoutePages.shared.pages,
        defaultTransition: Transition.native,
        initialRoute: RoutePages.shared.initialRoute,
        debugShowCheckedModeBanner: false,
        theme: CustomThemeData.getTheme(context),
      );
}
