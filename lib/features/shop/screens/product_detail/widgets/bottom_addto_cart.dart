import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
   final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace , vertical: Sizes.defaultSpace /2),
      decoration: BoxDecoration(
        color:  dark ? TColors.darkerGrey : TColors.light,
        borderRadius:  const  BorderRadius.only(
          topLeft: Radius.circular(Sizes.cardRadiusLg),
          topRight: Radius.circular(Sizes.cardRadiusLg),
        )
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus ,
                backgroundColor: TColors.darkerGrey,
                width: 40 ,
                height: 40,
                color: Colors.white, ),

              const SizedBox(width: Sizes.spaceBtwItems,),
              Text("2" , style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: Sizes.spaceBtwItems,),

              const TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.black,
                width: 40 ,
                height: 40,
                color: Colors.white,),


            ],
          ),
          ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(Sizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: Colors.black)

            ),
            child: const Text("Add to Cart"),
          ),
        ],
      ),
    );
  }
}
