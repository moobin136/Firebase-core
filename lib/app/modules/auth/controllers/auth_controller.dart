import 'package:firbase_test/export.dart';

class AuthController extends GetxController {
  //phone controller
  TextEditingController phoneController = TextEditingController();

  //from kye
  final formKey = GlobalKey<FormState>();

  //validation
  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (value.length != 11) {
      return 'Phone number must be 11 digits';
    }
    return null; // Valid input
  }

  //login method
  void login() {
    print('Logging in with phone number: ${phoneController.text}');

    Get.offNamed(Routes.HOME);
    Future.delayed(const Duration(milliseconds: 200), () {
      // Clear the phone number after successful login
      phoneController.clear();
      // Show a snackbar on successful login
      Get.snackbar(
        'Login Successful',
        'Welcome back!',
        backgroundColor: Colors.green.shade300,
        colorText: Colors.white,
      );
    });
  }

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
    phoneController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    print('AuthController closed');
    phoneController.dispose();
  }
}
