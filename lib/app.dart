// ignore_for_file: use_super_parameters

import 'package:firbase_test/export.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      theme: AppTheme.light,
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.dark,
      // defaultTransition: Transition.fade,
      transitionDuration: const Duration(seconds: 5),
      locale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
