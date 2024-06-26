
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: AppSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: PageController(),
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: AppColors.black, dotHeight: 6),
        ));
  }
}
