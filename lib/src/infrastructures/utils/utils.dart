import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utils {
  Utils._();

  static final shared = Utils._();

  final double tinySpace = 4;
  final double smallSpace = 8;
  final double mediumSpace = 16;
  final double largeSpace = 32;
  final double semiGiantSpace = 40;
  final double giantSpace = 64;

  final double defaultResponsiveMaxWidth = 600;

  Widget get tinyVerticalSpacer => SizedBox(height: tinySpace);

  Widget get smallVerticalSpacer => SizedBox(height: smallSpace);

  Widget get mediumVerticalSpacer => SizedBox(height: mediumSpace);

  Widget get largeVerticalSpacer => SizedBox(height: largeSpace);

  Widget get semiGiantVerticalSpacer => SizedBox(height: semiGiantSpace);

  Widget get giantVerticalSpacer => SizedBox(height: giantSpace);

  Widget get tinyHorizontalSpacer => SizedBox(width: tinySpace);

  Widget get smallHorizontalSpacer => SizedBox(width: smallSpace);

  Widget get mediumHorizontalSpacer => SizedBox(width: mediumSpace);

  Widget get largeHorizontalSpacer => SizedBox(width: largeSpace);

  Widget get semiGiantHorizontalSpacer => SizedBox(width: semiGiantSpace);

  Widget get giantHorizontalSpacer => SizedBox(width: giantSpace);

  EdgeInsetsDirectional get tinyPadding => EdgeInsetsDirectional.all(tinySpace);

  EdgeInsetsDirectional get smallPadding =>
      EdgeInsetsDirectional.all(smallSpace);

  EdgeInsetsDirectional get mediumPadding =>
      EdgeInsetsDirectional.all(mediumSpace);

  EdgeInsetsDirectional get largePadding =>
      EdgeInsetsDirectional.all(largeSpace);

  EdgeInsetsDirectional get semiGiantPadding =>
      EdgeInsetsDirectional.all(semiGiantSpace);

  EdgeInsetsDirectional get giantPadding =>
      EdgeInsetsDirectional.all(giantSpace);

  final double cardElevation = 0;

  final int timeOutDelay = 10000;
  final int searchDelay = 500;
  final int filterDelay = 1000;
  final int paginationLimit = 15;

  Duration get searchDebouncerDuration => Duration(milliseconds: searchDelay);

  Duration get defaultTimeOutDuration => Duration(milliseconds: timeOutDelay);

  Duration get filterDebouncerDuration => Duration(milliseconds: filterDelay);

  final double smallAvatarSize = 30.0;
  final double mediumAvatarSize = 35.0;
  final double largeAvatarSize = 45.0;

  final double smallLogoSize = 50.0;
  final double mediumLogoSize = 110.0;
  final double largeLogoSize = 200.0;

  final double androidNavigationBarSpace = 70.0;
  final double iosNavigationBarSpace = 92.0;

  double get navigationBarSpace =>
      Platform.isAndroid ? androidNavigationBarSpace : iosNavigationBarSpace;

  final double smallSlidAbleActionExtentRatio = 0.15;
  final double mediumSlidAbleActionExtentRatio = 0.38;

  // Map<String, String> get avatarHeader =>
  //    {'authorization': 'Bearer ${TokenInfo.token}'};

  final String authorization = 'Authorization';

  final String bearer = 'Bearer';

  final String jsonContentType = 'application/json';

  final String formDataContentType = 'multipart/form-data';

  final String fullNameSearchFilterKey = 'searchText';

  final String connectionLookupUrl = 'google.com';

  String threeDigitSeparate(
    final String number, {
    final String separator = ',',
  }) {
    String str = '';
    final numberSplit = number.split('.');
    for (var i = numberSplit.first.length; i > 0;) {
      str = i > 3
          ? separator + number.substring(i - 3, i) + str
          : number.substring(0, i) + str;
      i = i - 3;
    }
    if (numberSplit.length > 1) {
      str += '.${numberSplit[1]}';
    }

    return str;
  }

  String? regularValidator(final String value) {
    if (value.isEmpty) {
      return 'This field can not be empty';
    }

    return null;
  }

  String formatDateTime(final DateTime date) =>
      DateFormat('MM/dd/yyyy').format(date);

  String removeDigitSeparator({
    required final String separator,
    required final String digit,
  }) =>
      digit.replaceAll(separator, '');
}
