import 'package:firbase_test/export.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      backgroundColor: AppColors.black,
      builder: (context) => const MyApp(),
    ),
  );
}
