import 'package:firbase_test/export.dart';



class AppBarThem {
  static AppBarTheme get lightAppBarTheme => const AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.white),
        titleTextStyle: TextStyle(
          color: AppColors.white, 
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );

  static AppBarTheme get darkAppBarTheme => const AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.white),
        titleTextStyle: TextStyle(
          color: AppColors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
}
