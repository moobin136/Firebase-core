import 'package:firbase_test/app/modules/auth/controllers/auth_controller.dart';
import 'package:firbase_test/export.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThem = Theme.of(context).textTheme; // এটাই সঠিক উপায়

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

            // Main Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 40),

                      // Description Text
                      Text(
                        textAlign: TextAlign.center,
                        'সুপার QR-এ দিয়ে পেমেন্ট নিন বিকাশ, রকেট ও নগদে \nসহ সকল ব্যাংক থেকে পেমেন্ট করুন।',
                        style: textThem.bodyMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(height: 60),

                      // Phone Input Field
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: controller.phoneController,
                        keyboardType: TextInputType.phone,
                        maxLength: 11,
                        validator: controller.validatePhone,
                        decoration: const InputDecoration(
                          prefixIcon:
                              const Icon(Icons.phone, color: Colors.red),
                          labelText: 'লগইন ও রেজিস্ট্রেশন করুন',
                          hintText: '+8801*********',
                          helperText:
                              'আপনের নিবন্ধিত NID দিয়ে মোবাইল নম্বর দিন',
                        ),
                      ),
                      const Spacer(),

                      // Login Button
                      CustomELButton(
                        textThem: textThem,
                        text: 'পরবর্তী',
                        onTap: () {
                          if (controller.formKey.currentState!.validate()) {
                            controller.login();
                          }
                        },
                      ),
                      //custom text
                      const Spacer(),
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
