import 'package:firbase_test/app/modules/authh/auth/controllers/auth_controller.dart';
import 'package:firbase_test/export.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}
