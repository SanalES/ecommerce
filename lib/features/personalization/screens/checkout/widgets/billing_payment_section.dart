import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: "Payment Method" , buttonTitle: "Change" , onPressed: (){},),
        const SizedBox(height: Sizes.spaceBtwItems /2 ,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.dark,
              padding: const EdgeInsets.all(Sizes.sm),
              child: const Image(image: AssetImage(TImage.googlepay),),
            ),
            const SizedBox(width: Sizes.spaceBtwItems /2,),
            Text("Googlepay" , style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
