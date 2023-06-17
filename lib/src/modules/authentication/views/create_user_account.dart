import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hashmi_and_brother_tranport/src/modules/authentication/presentation/auth_viewmodel.dart';
import 'package:hashmi_and_brother_tranport/src/modules/components/custom_button.dart';
import 'package:hashmi_and_brother_tranport/src/modules/components/custom_textfield.dart';
import 'package:hashmi_and_brother_tranport/src/templates/background_template.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateUserAccount extends ConsumerWidget {
  const CreateUserAccount({super.key});

  @override
  Widget build(context, ref) {
    AuthViewModel auth = ref.watch(authViewModel);
    auth.init(context);
    return BackgroundTemplate(
      showLogo: false,
      showCanvas: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60.sp),
            const Text(
              "Create User Account",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.sp),
            CustomTextField(
              hintText: "Full Name",
              controller: auth.name,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: "CNIC Number",
              controller: auth.cnic,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: "Phone Number",
              controller: auth.phone,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: "Continue",
              onTap: () => auth.createUserAccount(),
            ),
          ],
        ),
      ),
    );
  }
}
