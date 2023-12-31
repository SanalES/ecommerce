import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductQualityWithAddandRemove extends StatelessWidget {
  const ProductQualityWithAddandRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon:Iconsax.minus,
          height: 32,
          width: 32,
          size: Sizes.md,
          color: THelperFunctions.isDarkMode(context) ? Colors.white : Colors.black,
          backgroundColor:THelperFunctions.isDarkMode(context) ? TColors.darkerGrey: TColors.light,
        ),

        const SizedBox(width: Sizes.spaceBtwItems,),
        Text("2" , style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: Sizes.spaceBtwItems,),
        TCircularIcon(
          icon:Iconsax.add,
          height: 32,
          width: 32,
          size: Sizes.md,
          color:  Colors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
