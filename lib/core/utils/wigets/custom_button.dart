// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:firbase_test/export.dart';

class CustomELButton extends StatelessWidget {
  const CustomELButton({
    super.key,
    required this.textThem,
    this.text,
    this.onTap,
    this.isOutline = false,
    this.fogboundColor = Colors.red,
    this.textColor = Colors.black,
  });

  final TextTheme textThem;
  final text;
  final Function()? onTap;
  final isOutline;
  final fogboundColor;
  final textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isOutline ? AppColors.transparent : fogboundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isOutline ? Colors.red.shade300 : AppColors.transparent,
            width: 2,
          ),
        ),
        height: 45,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: isOutline
                ? textThem.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                    fontSize: 16,
                  )
                : textThem.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                    fontSize: 16,
                  ),
          ),
        ),
      ),
    );
  }
}
