
import 'package:firbase_test/export.dart';

import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings  {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}
