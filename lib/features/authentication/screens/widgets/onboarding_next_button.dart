import 'package:epic_mart/features/authentication/controllers/onboarding_controller.dart';
import 'package:epic_mart/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
        right: AppSizes.defaultSpace,
        bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: dark ? AppColors.primary : Colors.black,
              shape: const CircleBorder(),
            ),
            onPressed: () {
              OnboardingController.instance.nextPage();
            },
            child: (const Icon(Iconsax.arrow_right_3))));
  }
}
