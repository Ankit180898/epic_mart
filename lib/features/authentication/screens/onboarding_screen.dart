import 'package:epic_mart/utils/constants/image_strings.dart';
import 'package:epic_mart/utils/constants/sizes.dart';
import 'package:epic_mart/utils/constants/texts.dart';
import 'package:epic_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image.asset(
                      width: AppHelperFunctions.screenWidth() * 0.80,
                      height: AppHelperFunctions.screenHeight() * 0.60,
                      AppImages.google),
                  Text(
                    AppTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                   SizedBox(height: AppSizes.spaceBtwItems,),
                  Text(
                    AppTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
