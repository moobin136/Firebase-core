// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:firbase_test/export.dart';

enum ButtonType { disable, enabled, solid, border }

class CustomELButton extends StatelessWidget {
  const CustomELButton({
    super.key,
    required this.textThem,
    required this.text,
    this.onTap,
    this.isOutline = false,
    this.forgroundColor = Colors.red,
    this.textColor = Colors.black,
    this.buttonType = ButtonType.enabled,
    this.isLoading = false,
  });

  final TextTheme textThem;
  final String text;
  final Function()? onTap;
  final isOutline;
  final forgroundColor;
  final textColor;
  final ButtonType buttonType;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    bool isDisabled = buttonType == ButtonType.disable;
    return GestureDetector(
      onTap: isDisabled ? null : onTap,
      child: Container(
        decoration: BoxDecoration(
          color: forgroundColor.withOpacity(isDisabled ? 0.5 : 1.0),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isOutline ? Colors.red.shade300 : AppColors.transparent,
            width: isOutline ? 2.0 : 0.0,
          ),
        ),
        height: 45,
        width: double.infinity,
        child: Center(
          //isLoading
          // //               ? SizedBox(
          // //             height: 24,
          // //             width: 24,
          // //             child: CircularProgressIndicator(
          // //               color: isDisabled && isLoading
          // //                   ? AppColors.PRIMARY
          // //                   : Colors.white,
          // //             ),
          child: (isLoading == true)
              ? SizedBox(
                  height: 22,
                  width: 22,
                  child: CircularProgressIndicator(
                      color: isDisabled ? Colors.red : Colors.white),
                )
              : Text(
                  text,
                  style: textThem.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.white.withOpacity(isDisabled ? 0.8 : 1.0),
                    fontSize: 16,
                  ),
                ),
        ),
      ),
    );
  }
}

// enum ButtonType {
//   DISABLED,
//   ENABLED,
//   SOFT,
//   BORDER,
// }

// class CustomButton extends StatelessWidget {
//   final String label;
//   final Function()? onTap;
//   final ButtonType buttonType;
//   final bool isLoading;
//
//   const CustomButton({
//     super.key,
//     required this.label,
//     this.onTap,
//     this.buttonType = ButtonType.ENABLED,
//     this.isLoading = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     bool isDisabled = buttonType == ButtonType.DISABLED;
//
//     return InkWell(
//       onTap: isDisabled ? null : onTap,
//       child: Container(
//         width: MediaQueryUtils.width,
//         decoration: BoxDecoration(
//           color: AppColors.PRIMARY.withOpacity(
//             isDisabled ? .25 : 1,
//           ),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         padding: const EdgeInsets.symmetric(
//           horizontal: 15,
//           vertical: 12,
//         ),
//         child: Center(
//           child: isLoading
//               ? SizedBox(
//             height: 24,
//             width: 24,
//             child: CircularProgressIndicator(
//               color: isDisabled && isLoading
//                   ? AppColors.PRIMARY
//                   : Colors.white,
//             ),
//           )
//               : Text(
//             label,
//             style: TextStyle(
//               color: Colors.white.withOpacity(
//                 isDisabled ? .8 : 1,
//               ),
//               fontSize: 17,
//               fontWeight: FontWeight.w800,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
