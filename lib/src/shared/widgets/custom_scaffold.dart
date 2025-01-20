import 'package:flutter/material.dart';

import '../../infrastructures/utils/utils.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final EdgeInsetsGeometry? contentPadding;

  const CustomScaffold({
    this.floatingActionButton,
    this.appBar,
    this.body,
    this.contentPadding,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: appBar,
        floatingActionButton: floatingActionButton,
        body: _body(),
      );

  Widget _body() => Align(
        child: LayoutBuilder(
          builder: (final context, final constraints) =>
              _bodyFrame(constraints),
        ),
      );

  Widget _bodyFrame(final BoxConstraints constraints) => SizedBox(
        height: constraints.maxHeight,
        width: constraints.maxWidth < Utils.shared.defaultResponsiveMaxWidth
            ? constraints.maxWidth
            : Utils.shared.defaultResponsiveMaxWidth,
        child: _safeArea(),
      );

  Widget _safeArea() => SafeArea(
        child: _defaultContentPadding(),
      );

  Widget _defaultContentPadding() => Padding(
        padding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: Utils.shared.mediumSpace,
              vertical: Utils.shared.smallSpace,
            ),
        child: body,
      );
}
