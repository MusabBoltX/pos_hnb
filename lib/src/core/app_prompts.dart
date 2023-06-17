import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Prompts {
  static Future<void> noInternetDialog(context) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        // backgroundColor: pinchToastColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            "No Internet Connection",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
            ),
          ),
        ),
        action: SnackBarAction(
          label: 'Close',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        duration: const Duration(seconds: 5),
      ),
    );
  }

  static void showSnackBar(context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        // backgroundColor: pinchToastColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            message,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
            ),
          ),
        ),
        action: SnackBarAction(
          label: 'Close',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        duration: const Duration(seconds: 5),
      ),
    );
  }
}
