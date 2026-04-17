import 'package:firbase_test/app/modules/auth/controllers/auth_controller.dart';
import 'package:firbase_test/export.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThem = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top Gradient Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red.shade200, AppColors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: SvgPicture.asset(
                    Assets.svg.qrCodePana,
                    width: 190,
                    height: 190,
                  ),
                ),
              ),
            ),
            //text
            Text(
              textAlign: TextAlign.center,
              'সুপার QR-এ দিয়ে পেমেন্ট নিন বিকাশ, রকেট ও নগদে \nসহ সকল ব্যাংক থেকে পেমেন্ট করুন।',
              style: textThem.bodyMedium?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            // Main Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'লগইন/রেজিস্ট্রেশন করুন',
                        style: textThem.headlineMedium?.copyWith(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: controller.phoneController,
                        keyboardType: TextInputType.phone,
                        maxLength: 11,
                        validator: controller.validatePhone,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone, color: Colors.red),
                          labelText: 'লগইন ও রেজিস্ট্রেশন করুন',
                          hintText: '+8801*********',
                          helperText:
                              'আপনের নিবন্ধিত NID দিয়ে মোবাইল নম্বর দিন',
                        ),
                      ),
                      const Spacer(),
                      CustomELButton(
                        buttonType: ButtonType.enabled,
                        isLoading: false,
                        textThem: textThem,
                        text: 'পরবর্তী',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
