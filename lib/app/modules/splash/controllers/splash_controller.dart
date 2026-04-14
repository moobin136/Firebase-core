// ignore_for_file: avoid_print

import 'package:firbase_test/app/routes/app_pages.dart';
import 'package:firbase_test/export.dart';


class SplashController extends GetxController {
  Future<void> initState() async {
    // Future.delayed(const Duration(milliseconds: 800), () {
    //   Get.offAllNamed(Routes.HOME);
    // });
    print('On Splash Screen =======================================');
    await Future.delayed(const Duration(milliseconds: 800));
    print('Go to Home Screen 800 milliseconds later =================');
    // Get.offAllNamed(Routes.HOME);
    Navigator.pushReplacementNamed(Get.context!, Routes.AUTH);
  }

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initState();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
