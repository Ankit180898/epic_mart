import 'package:epic_mart/features/authentication/controllers/onboarding_controller.dart';
import 'package:epic_mart/features/authentication/screens/widgets/onboarding_navigation.dart';
import 'package:epic_mart/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:epic_mart/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:epic_mart/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:epic_mart/utils/constants/image_strings.dart';
import 'package:epic_mart/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImages.facebook,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.facebook,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.facebook,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
