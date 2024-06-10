import 'package:flutter/material.dart';
import 'package:new_onboarding/features/authentication/controllers/onboarding_controllers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TOnBoardingDotNavigation extends StatelessWidget {
  const TOnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return SmoothPageIndicator(
      count: 5,
      controller: controller.pageController,
      effect: ExpandingDotsEffect(
        activeDotColor: Theme.of(context).colorScheme.primary,
        dotColor: const Color(0xFF434743),
        expansionFactor: 3,
        dotHeight: 8,
        dotWidth: 8,
      ),
    );
  }
}
