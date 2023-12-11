import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () =>Get.back(), icon:const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // image
            Image(
              image: AssetImage(TImage.verifyEmail),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Title and Subtitle
            Text(
              TTexts.changeYourPassword,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //Button
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed:() {},child: const Text(TTexts.done))),
            const SizedBox( height:  TSizes.spaceBtwItems,),
            SizedBox(width: double.infinity,
            child: TextButton(onPressed: () {} , child:  const Text(TTexts.resendEmail),),),


          ],
        ),
      ),
      ),
    );
  }
}