import 'package:get/get.dart';
import '../../../shared/enums/page_state_enum.dart';
import '../../../shared/models/view_model/customer_view_model.dart';
import '../models/dto/customer_dto.dart';
import '../repositories/customer_form_edit_repository.dart';
import 'modify_customer_form_controller.dart';

class CustomerFormEditController extends ModifyCustomerFormController {
  late final String customerId;

  CustomerFormEditController(
    super.repository,
  );

  CustomerFormEditRepository get _editRepository =>
      repository as CustomerFormEditRepository;

  @override
  void onInit() {
    customerId = Get.parameters[':id'] ?? '';
    state.value = PageStateEnum.loading;
    _getCustomerData();

    super.onInit();
  }

  Future<void> _getCustomerData() async {
    final resultOrException = await _editRepository.getCustomerData(customerId);

    resultOrException.fold(
      (final exception) => state.value = PageStateEnum.retry,
      (final result) {
        _initialData(result);
        state.value = PageStateEnum.success;
      },
    );
  }

  void _initialData(final CustomerViewModel result) {
    firstName.text = result.firstName;
    lastName.text = result.lastName;
    phoneNumber.text = result.phoneNumber;
    email.text = result.email;
    bankAccountNumber.text = result.bankAccountNumber;
    dateOfBirth.value = result.dateOfBirth;
  }

  @override
  Future<void> onAddOrEditButtonTap() async {
    isProcessing.value = true;
    final isValid = validateForm();

    if (isValid) {
      /// usually this type of checking should be done in backend side
      /// to prevent from these messes :))

      // checks if there is another customer with same data
      final similarCustomers = await _checkForSameCustomer();

      //if checking process face an error
      if (similarCustomers == null) {
        isProcessing.value = false;
        return;
      }

      ///No same identity is found
      if (similarCustomers.isEmpty || _isItThisCustomer(similarCustomers)) {
        // checks if there is another customer with same email
        final similarEmails = await _checkForSimilarEmail();

        //if checking process face an error
        if (similarEmails == null) {
          isProcessing.value = false;
          return;
        }

        /// No similar customer and email
        if (similarEmails.isEmpty || _isItThisCustomer(similarEmails)) {
          // add new customer
          final dto = _createDto();
          await _addCustomer(dto);
        } else {
          ///same email is found
          _showSameEmailError();
        }
      } else {
        ///same identity is found
        _showSameCustomerError();
      }
    }

    ///Validation was not successful
    isProcessing.value = false;
  }

  bool _isItThisCustomer(final List<CustomerViewModel> similarCustomers) =>
      similarCustomers.first.id == customerId;

  Future<List<CustomerViewModel>?> _checkForSimilarEmail() =>
      checkForSimilarEmails(
        email.text,
      );

  Future<List<CustomerViewModel>?> _checkForSameCustomer() =>
      checkForSimilarCustomers(
        firstName.text,
        lastName.text,
        dateOfBirth.value!.toUtc().toIso8601String(),
      );

  void _showSameCustomerError() {
    isProcessing.value = false;

    Get.snackbar(
      'Error',
      'Someone already has the same identity',
    );
  }

  void _showSameEmailError() {
    isProcessing.value = false;
    Get.snackbar(
      'Error',
      'Someone using this Email',
    );
  }

  Future<void> _addCustomer(final CustomerDto dto) async {
    final resultOrException = await _editRepository.editCustomer(
      customerId,
      dto,
    );

    resultOrException.fold(
      (final exception) => isProcessing.value = false,
      (final result) {
        Get.back(result: true);
      },
    );
  }

  CustomerDto _createDto() => CustomerDto(
        firstName: firstName.text,
        lastName: lastName.text,
        dateOfBirth: dateOfBirth.value!,
        email: email.text,
        bankAccount: bankAccountNumber.text,
        phoneNumber: phoneNumber.text,
      );

  @override
  Future<void> onRetry() => _getCustomerData();
}
