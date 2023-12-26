import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/features/shop/screens/product_detail/product_detail.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);


    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()) ,
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow:  [TShoadowStyle.vericalProductShadow],
          borderRadius: BorderRadius.circular(Sizes.productImageRaius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            //thumbnail wishlist button etcccccc....... evde
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(Sizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [

                    /// Thumbnail -------//////////////
                    const TRoundedImage(imageUrl: TImage.productImage1, applyImageRadius: true,),

                    ///Sale Tag---------/////////////

                    Positioned(
                      top:12,
                    child:TRoundedContainer(

                      radius: Sizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal:  Sizes.sm , vertical: Sizes.xs),
                      child: Text('35%' , style:  Theme.of(context).textTheme.labelLarge!. apply(color: TColors.black),),

                    ),
                    ),

                    // Favourite Icon Button

                    const Positioned(
                       top: 0,
                        right: 0,
                        child: TCircularIcon( icon: Iconsax.heart5, color: Colors.red,))
                  ],
                ),
            ),

            const SizedBox(height: Sizes.spaceBtwItems /2,),

            //Details of products kodukan

             Padding(padding: const EdgeInsets.only(left: Sizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const TProductTitleText(title: "Green Nike Air Shoes" ,),
                const SizedBox(height: Sizes.spaceBtwItems/2,),
                Row(
                  children: [
                    Text('Nike' , overflow: TextOverflow.ellipsis, maxLines: 2 , style: Theme.of(context).textTheme.labelMedium,),
                    const SizedBox(width: Sizes.xs,),
                    const Icon(Iconsax.verify5 , color: TColors.primary, size: Sizes.iconXs,)
                  ],
                ),
              ],
            ),
             ),
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                const Padding(
                  padding: EdgeInsets.only(left: Sizes.sm),
                  child: TProductPriceText(price: '40.0' , isLarge: true),
                ),

                ///add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Sizes.cardRadiusMd),
                      bottomRight: Radius.circular(Sizes.productImageRaius),
                    ),
                  ),
                  child: const SizedBox(
                    width: Sizes.iconLg * 1.2,
                    height: Sizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}