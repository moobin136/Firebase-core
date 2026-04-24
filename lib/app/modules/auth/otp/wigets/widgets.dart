import 'package:firbase_test/export.dart';

class OTPField extends StatelessWidget {
  const OTPField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 50,
      child: TextFormField(
        maxLength: 1,
        decoration: InputDecoration(counterText: ''),
      ),
    );
  }
}
