import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_onboarding/features/authentication/page/onboarding/onboarding.dart';
import 'package:get/get.dart';
import 'package:new_onboarding/utils/constants/media_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const OnboardingPage());
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              TMedias.logoSvg,
              width: 116,
              height: 116,
            ),
          ],
        ),
      ),
    );
  }
}
