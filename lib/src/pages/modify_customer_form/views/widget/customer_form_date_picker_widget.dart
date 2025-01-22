import 'package:flutter/material.dart';

import '../../../../infrastructures/theme/custom_theme.dart';
import '../../../../infrastructures/utils/utils.dart';

class CustomerFormDatePickerWidget extends StatelessWidget {
  final Function(DateTime? onDatePicked) onDatePicked;
  final DateTime? pickedDate;
  final bool showError;

  const CustomerFormDatePickerWidget({
    required this.onDatePicked,
    required this.showError,
    super.key,
    this.pickedDate,
  });

  @override
  Widget build(final BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _frame(context),
          if (showError) _errorMessagePadding(context),
        ],
      );

  Widget _errorMessagePadding(final BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: Utils.shared.tinySpace,
        ),
        child: _errorMessage(context),
      );

  Widget _errorMessage(final BuildContext context) => Text(
        'Please select your Birthdate',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: CustomTheme.shared.dangerColor,
            ),
      );

  Widget _frame(final BuildContext context) => DecoratedBox(
        decoration: _decoration(),
        child: _bodyPadding(context),
      );

  Widget _bodyPadding(final BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Utils.shared.mediumSpace,
          vertical: Utils.shared.tinySpace,
        ),
        child: _body(context),
      );

  Widget _body(final BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _selectedDate(),
          _dateButton(context),
        ],
      );

  IconButton _dateButton(final BuildContext context) => IconButton(
        onPressed: () async {
          final newDate = await _showDatePicker(context);

          onDatePicked(newDate);
        },
        icon: _dateButtonIcon(),
      );

  Future<DateTime?> _showDatePicker(final BuildContext context) =>
      showDatePicker(
        context: context,
        initialDate: pickedDate,
        firstDate: DateTime.now().copyWith(
          year: 1900,
        ),
        lastDate: DateTime.now(),
      );

  Widget _dateButtonIcon() => const Icon(
        Icons.date_range_rounded,
      );

  Widget _selectedDate() => Text(
        pickedDate != null
            ? Utils.shared.formatDateTime(pickedDate!)
            : 'Select Your BirthDate',
      );

  BoxDecoration _decoration() => BoxDecoration(
        color: CustomTheme.shared.textColor.shade200,
        borderRadius: BorderRadius.circular(
          CustomTheme.shared.borderRadiusSemiRound,
        ),
      );
}
