import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextField extends StatelessWidget {
  final VoidCallback? onEyePressed;
  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText, showSuffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  const CustomTextField({
    super.key,
    this.textInputAction,
    this.controller,
    this.hintText,
    this.obscureText,
    this.keyboardType,
    this.onEyePressed,
    this.showSuffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Platform.isWindows ? 50.w : double.infinity,
      height: 60,
      child: TextField(
        controller: controller,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        textInputAction: textInputAction ?? TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textFieldColor,
          hintText: hintText ?? "Email",
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          // add eye icon to show/hide password
          suffixIcon: showSuffixIcon == true
              ? IconButton(
                  onPressed: onEyePressed,
                  icon: Icon(
                    obscureText == true
                        ? Icons.visibility_off
                        : Icons.remove_red_eye,
                  ),
                )
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
