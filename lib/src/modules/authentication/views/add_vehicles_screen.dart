import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_decorations.dart';
import 'package:hashmi_and_brother_tranport/src/modules/authentication/presentation/auth_viewmodel.dart';
import 'package:hashmi_and_brother_tranport/src/modules/components/custom_button.dart';
import 'package:hashmi_and_brother_tranport/src/modules/components/custom_textfield.dart';
import 'package:hashmi_and_brother_tranport/src/templates/background_template.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddVehiclesScreen extends ConsumerWidget {
  const AddVehiclesScreen({super.key});

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
            SizedBox(height: 50.sp),
            const Text(
              "Enter Vehicles Details",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(20),
              decoration: AppDecorations.boxDecor(),
              child: _generativeForm(),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Add Another Vehicle",
              color: Colors.white,
              textColor: Colors.black,
              onTap: () {},
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Continue",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  _generativeForm() {
    return const Column(
      children: [
        CustomTextField(
          hintText: "Vehicle Number",
          // controller: auth.name,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20),
        CustomTextField(
          hintText: "Vehicle Type",
          // controller: auth.cnic,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 20),
        CustomTextField(
          hintText: "Engine Number",
          // controller: auth.phone,
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 20),
        CustomTextField(
          hintText: "Chassis Number",
          // controller: auth.phone,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
