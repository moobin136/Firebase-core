import 'package:firbase_test/export.dart';

class AppTheme {
  /// Light Theme
  static ThemeData get light => ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: AppColors.primaryColors,
        scaffoldBackgroundColor: AppColors.white,
        textTheme: AppTextTheme.lightTextTheme,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: AppTextTheme.lightTextTheme.titleSmall?.copyWith(
            color: Colors.red.shade900,
            fontSize: 14,
          ),
          labelStyle: AppTextTheme.lightTextTheme.titleSmall?.copyWith(
            color: Colors.red.shade900,
            fontSize: 14,
          ),
          helperStyle: AppTextTheme.lightTextTheme.titleSmall?.copyWith(
            color: const Color(0xFFABABAB),
            fontSize: 11,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xAFE57373), width: 1.5),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xAFE57373), width: 1.5),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFD1302), width: 1.5),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade300, width: 1.5),
          ),
        ),
      );

  /// Dark Theme
  static ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: AppColors.primaryColors,
        scaffoldBackgroundColor: AppColors.black,
        textTheme: AppTextTheme.darkTextTheme,

        // Dark theme এর জন্যও inputDecorationTheme চাইলে যোগ করতে পারো
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: AppTextTheme.darkTextTheme.titleSmall?.copyWith(
            color: Colors.red.shade200,
            fontSize: 14,
          ),
          labelStyle: AppTextTheme.darkTextTheme.titleSmall?.copyWith(
            color: Colors.red.shade200,
            fontSize: 14,
          ),
        ),
      );
}
