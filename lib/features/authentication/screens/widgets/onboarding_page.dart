import 'package:flutter/material.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: AppHelperFunctions.screenWidth() * 0.80,
              height: AppHelperFunctions.screenHeight() * 0.60,
              color: AppColors.accent,
            ),
            Image(
              width: AppHelperFunctions.screenWidth() * 0.80,
              height: AppHelperFunctions.screenHeight() * 0.60,
              image: AssetImage(image),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
