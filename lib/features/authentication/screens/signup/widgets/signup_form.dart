
import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signupterms.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: Sizes.spaceBtwInputFields,),
              Expanded(child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText:  TTexts.lastName , prefixIcon: Icon(Iconsax.user)),
              ))
            ],
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields,),
          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: TTexts.username , prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields,),

          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: TTexts.email , prefixIcon: Icon(Iconsax.direct)),
          ),

          //phone number
          const SizedBox(height: Sizes.spaceBtwInputFields,),
          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: TTexts.phoneNumber , prefixIcon: Icon(Iconsax.call)),
          ),

          const SizedBox(height: Sizes.spaceBtwInputFields,),
          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: TTexts.password , prefixIcon: Icon(Iconsax.password_check),suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: Sizes.spaceBtwSections,),

          //Terms and Conditions Checkbox
          const TTermsAndConditionCheckBox(),
          ///sign up
          const SizedBox(height: Sizes.spaceBtwItems,),

          SizedBox(
            width:double.infinity , child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen ()) ,child: const Text(TTexts.createAccount),) ,
          )
        ],
      ),
    );
  }
}

