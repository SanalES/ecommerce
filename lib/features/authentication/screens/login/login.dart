import 'package:ecommerce/common/styles/spaceing_styles.dart';
import 'package:ecommerce/common/widgets_login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets_login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo , title
              Image(
                height: 150,
                image: AssetImage(
                  dark ? TImage.darkAppLogo : TImage.lightAppLogo,
                ),
              ),
              Text(
                TTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.sm,
              ),
              Text(
                TTexts.loginSubTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),


              //login form
              const Tlogin_form(),

              //Divider
              TFormDivider(dark: dark, dividerText: TTexts.orSignInWidth.capitalize!,),


              const SizedBox(height: TSizes.spaceBtwSections,),

              ///footer

              const TSocial_Buttons()
            ],
          ),
        ),
      ),
    );
  }
}

