import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_onboarding/utils/constants/media_strings.dart';
import 'package:new_onboarding/utils/constants/text_strings.dart';
import 'package:new_onboarding/utils/device/device_utility.dart';
import 'package:new_onboarding/utils/helpers/helper_functions.dart';
import '../../controllers/onboarding_controllers.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(children: [
        /// Horinzontal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              media: TMedias.onBoardingMedia1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              media: TMedias.onBoardingMedia2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              media: TMedias.onBoardingMedia3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            ),
            OnBoardingPage(
              media: TMedias.onBoardingMedia4,
              title: TTexts.onBoardingTitle4,
              subTitle: TTexts.onBoardingSubTitle4,
            ),
            OnBoardingPage(
              media: TMedias.onBoardingMedia5,
              title: TTexts.onBoardingTitle5,
              subTitle: TTexts.onBoardingSubTitle5,
            ),
          ],
        ),

        /// SmoothPageIndicator & Buttons
        Positioned(
          bottom: TDeviceUtils.getBottomNavigationBarHeight(),
          width: THelperFunctions.screenWidth(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TOnBoardingDotNavigation(),
                const SizedBox(
                  height: 48,
                ),
                FilledButton(
                    onPressed: () {}, child: const Text("SOU NOVO AQUI")),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                    onPressed: () {}, child: const Text("JÁ SOU CLIENTE")),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
