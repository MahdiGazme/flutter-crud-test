import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructures/app_control/validators.dart';
import '../../../../infrastructures/utils/utils.dart';
import '../../controllers/modify_customer_form_controller.dart';
import 'customer_form_custom_text_field_widget.dart';
import 'customer_form_date_picker_widget.dart';

class CustomerFormWidget<T extends ModifyCustomerFormController>
    extends GetView<T> {
  const CustomerFormWidget({super.key});

  @override
  Widget build(final BuildContext context) => Form(
        key: controller.formKey,
        child: _textFields(),
      );

  Widget _textFields() => Column(
        children: [
          _firstNameTextField(),
          Utils.shared.smallVerticalSpacer,
          _lastNameTextField(),
          Utils.shared.smallVerticalSpacer,
          _emailTextField(),
          Utils.shared.smallVerticalSpacer,
          _phoneNumberTextField(),
          Utils.shared.smallVerticalSpacer,
          _bankAccountTextField(),
          Utils.shared.smallVerticalSpacer,
          _datePicker(),
        ],
      );

  Widget _datePicker() => Obx(
        () => CustomerFormDatePickerWidget(
          pickedDate: controller.dateOfBirth.value,
          showError: controller.showDatePickerError.value,
          onDatePicked: controller.onDatePicked,
        ),
      );

  Widget _bankAccountTextField() => CustomerFormCustomTextFieldWidget(
        label: 'Bank Account Number',
        controller: controller.bankAccountNumber,
        keyboardType: TextInputType.number,
        validator: Validators.shared.regularValidator,
      );

  Widget _phoneNumberTextField() => CustomerFormCustomTextFieldWidget(
        label: 'phoneNumber',
        controller: controller.phoneNumber,
        keyboardType: TextInputType.phone,
        hint: 'US phone number',
        validator: Validators.shared.phoneNumberValidator,
      );

  Widget _emailTextField() => CustomerFormCustomTextFieldWidget(
        label: 'Email',
        controller: controller.email,
        keyboardType: TextInputType.emailAddress,
        validator: Validators.shared.emailValidator,
      );

  Widget _lastNameTextField() => CustomerFormCustomTextFieldWidget(
        label: 'Last Name',
        controller: controller.lastName,
        keyboardType: TextInputType.name,
        validator: Validators.shared.regularValidator,
      );

  Widget _firstNameTextField() => CustomerFormCustomTextFieldWidget(
        label: 'First Name',
        controller: controller.firstName,
        keyboardType: TextInputType.name,
        validator: Validators.shared.regularValidator,
      );
}
