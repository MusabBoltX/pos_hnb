import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_router.dart';
import 'package:hashmi_and_brother_tranport/src/modules/authentication/presentation/auth_viewmodel.dart';
import 'package:hashmi_and_brother_tranport/src/modules/authentication/views/create_user_account.dart';
import 'package:hashmi_and_brother_tranport/src/modules/components/custom_button.dart';
import 'package:hashmi_and_brother_tranport/src/modules/components/custom_textfield.dart';
import 'package:hashmi_and_brother_tranport/src/templates/background_template.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context, ref) {
    AuthViewModel auth = ref.watch(authViewModel);
    auth.init(context);
    return BackgroundTemplate(
      showLogo: false,
      showCanvas: false,
      child: Column(
        children: [
          SizedBox(height: 60.sp),
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.sp),
          CustomTextField(
            hintText: "Email",
            controller: auth.email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: "Password",
            showSuffixIcon: true,
            obscureText: auth.isPasswordVisible,
            textInputAction: TextInputAction.done,
            controller: auth.password,
            onEyePressed: () => auth.togglePassword(),
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: "Login",
            onTap: () => auth.login(),
          ),
        ],
      ),
    );
  }
}
