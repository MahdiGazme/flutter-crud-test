import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/enums/page_state_enum.dart';
import '../../../shared/models/view_model/customer_view_model.dart';
import '../repositories/modify_customer_form_repository.dart';

abstract class ModifyCustomerFormController extends GetxController {
  final ModifyCustomerFormRepository repository;

  ModifyCustomerFormController(this.repository);

  final state = PageStateEnum.success.obs;

  final Rxn<DateTime> dateOfBirth = Rxn();

  final showDatePickerError = false.obs, isProcessing = false.obs;

  final formKey = GlobalKey<FormState>();

  final firstName = TextEditingController(),
      lastName = TextEditingController(),
      email = TextEditingController(),
      phoneNumber = TextEditingController(),
      bankAccountNumber = TextEditingController();

  Future<void> onAddOrEditButtonTap();

  Future<void> onRetry();

  void onDatePicked(final DateTime? pickedDate) {
    if (pickedDate != null) {
      showDatePickerError.value = false;
      dateOfBirth.value = pickedDate;
    }
  }

  Future<List<CustomerViewModel>?> checkForSimilarEmails(
      final String email) async {
    final resultOrException = await repository.checkForSimilarEmail(email);

    return resultOrException.fold(
      (final exception) => null,
      (final result) => result,
    );
  }

  Future<List<CustomerViewModel>?> checkForSimilarCustomers(
    final String firstName,
    final String lastName,
    final String dateOfBirth,
  ) async {
    final resultOrException = await repository.checkForSimilarCustomer(
      firstName,
      lastName,
      dateOfBirth,
    );

    return resultOrException.fold(
      (final exception) => null,
      (final result) => result,
    );
  }

  bool validateForm() {
    final isFormValidate = formKey.currentState!.validate();

    _manegeDatePickerError();

    if (isFormValidate && dateOfBirth.value != null) {
      return true;
    }

    return false;
  }

  void _manegeDatePickerError() {
    // resets last error state
    showDatePickerError.value = false;

    if (dateOfBirth.value == null) {
      showDatePickerError.value = true;
    }
  }
}
