import 'package:ecommerce/common/widgets/form_divider.dart';
import 'package:ecommerce/common/widgets/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),

              //Form

               const TSignupForm(),
              
              //Divider
              const SizedBox(height: 10,),
              TFormDivider(dividerText : TTexts.orSignInWidth.capitalize!, dark: false,),
            const SizedBox(height:  Sizes.spaceBtwSections,),

            //social buttons

              const TSocial_Buttons(),


            ],
          ),
        ),
      ),
    );
  }
}


