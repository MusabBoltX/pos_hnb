import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackgroundTemplate extends StatelessWidget {
  final Widget child;
  final bool? showLogo, showCanvas;

  const BackgroundTemplate({
    super.key,
    required this.child,
    this.showLogo,
    this.showCanvas,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          showLogo == true
              ? Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 70.sp,
                    child: Image.asset(
                      "assets/logo.png",
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          showCanvas == false
              ? const SizedBox.shrink()
              : Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 70.sp,
                    child: Image.asset(
                      "assets/canvas.png",
                    ),
                  ),
                ),
          Align(
            alignment:
                Platform.isWindows ? Alignment.topCenter : Alignment.topRight,
            child: Container(
              padding: EdgeInsets.only(
                right: Platform.isWindows ? 0.sp : 20.sp,
              ),
              height: 50.sp,
              child: Image.asset(
                "assets/lamp.png",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(child: child),
          ),
        ],
      ),
    );
  }
}
