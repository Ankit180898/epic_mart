import 'package:epic_mart/common/styles/spacing_styles.dart';
import 'package:epic_mart/utils/constants/image_strings.dart';
import 'package:epic_mart/utils/constants/sizes.dart';
import 'package:epic_mart/utils/constants/texts.dart';
import 'package:epic_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image(
                      image: AssetImage(dark
                          ? AppImages.darkAppLogo
                          : AppImages.lightAppLogo)),
                  //this will be changed
                  Text(
                    AppTexts.homeAppbarTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: AppSizes.sm,
                  ),
                  Text(
                    AppTexts.homeAppbarSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Form(
                child: Column(
                  children: [
                    //Email
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: AppTexts.email,
                      ),
                    ),

                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields,
                    ),
                    // password

                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: AppTexts.password,
                          suffix: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields / 2,
                    ),

                    // Remember Me & Forgot Password
                    Row(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(AppTexts.rememberMe)
                          ],
                        ),

                        //Forget password
                        TextButton(
                            onPressed: () {},
                            child: const Text(AppTexts.forgetPassword))
                      ],
                    ),
                     const SizedBox(height: AppSizes.spaceBtwSections,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
