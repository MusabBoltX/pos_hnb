import 'package:flutter/material.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_router.dart';
import 'package:hashmi_and_brother_tranport/src/modules/authentication/views/login_screen.dart';
import 'package:hashmi_and_brother_tranport/src/templates/background_template.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      NavigationService.replaceAll(context, const LoginScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundTemplate(
      showLogo: true,
      child: Container(),
    );
  }
}
