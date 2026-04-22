import 'package:firbase_test/export.dart';

class AuthController extends GetxController {
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxString number = ''.obs;

  void handlePhoneChange(String value) {
    if (value.isNotEmpty && !value.startsWith('1')) {
      phoneController.clear();
      number.value = '';

      Get.snackbar(
        'সতর্কবার্তা',
        'নম্বরটি অবশ্যই 1! দিয়ে শুরু হতে হবে!',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.all(15),
      );
    } else {
      number.value = value;
    }
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'ফোন নম্বর দিন';
    } else if (value.length != 10) {
      return 'নম্বরটি ১০ ডিজিটের হতে হবে';
    }
    return null;
  }

  void onTapLoginButton() {
    if (formKey.currentState!.validate()) {
      print(number.value.toString());
      Get.toNamed(Routes.HOME);
    }
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
