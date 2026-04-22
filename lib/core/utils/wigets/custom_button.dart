import 'package:firbase_test/export.dart';

enum ButtonTrype {
  ENABLE,
  DISABLE,
  SOFT,
}

class CustomButton extends StatelessWidget {
  final String text;
  final TextTheme textTheme;
  final ButtonTrype buttonTrype;
  final VoidCallback? onTap;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.buttonTrype = ButtonTrype.ENABLE,
    required this.textTheme,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    bool isDisable = (buttonTrype == ButtonTrype.DISABLE);
    return InkWell(
      onTap: isDisable ? null : onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primaryColors.withOpacity(isDisable ? 0.48 : 1.0),
            borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: isLoading
                ? SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color:
                          isDisable ? AppColors.primaryColors : AppColors.white,
                    ),
                  )
                : Text(
                    text,
                    style: textTheme.titleSmall?.copyWith(
                        color:
                            AppColors.white.withOpacity(isDisable ? 0.8 : 1.0)),
                  ),
          ),
        ),
      ),
    );
  }
}
