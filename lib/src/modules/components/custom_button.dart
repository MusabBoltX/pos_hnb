import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_colors.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_decorations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  final Color color, textColor;
  final VoidCallback? onTap;
  final String? text;
  final bool? enabled;

  const CustomButton({
    super.key,
    this.color = AppColors.primaryColor,
    this.textColor = Colors.white,
    this.onTap,
    this.enabled,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Platform.isWindows ? 50.w : double.infinity,
        height: 55,
        decoration: AppDecorations.boxDecor().copyWith(color: color),
        child: Center(
          child: Text(
            text ?? "Proceed",
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
