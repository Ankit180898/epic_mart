import 'package:epic_mart/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: AppDeviceUtils.getAppBarHeight(),
        right: AppSizes.defaultSpace,
        child: TextButton(
          child: const Text("Skip"),
          onPressed: () {
            OnboardingController.instance.skipPage();
          },
        ));
  }
}
