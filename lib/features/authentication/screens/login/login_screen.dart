import 'package:epic_mart/common/styles/spacing_styles.dart';
import 'package:epic_mart/utils/constants/image_strings.dart';
import 'package:epic_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Image(image: AssetImage(AppImages.darkAppLogo))],
          ),
        ),
      ),
    );
  }
}
