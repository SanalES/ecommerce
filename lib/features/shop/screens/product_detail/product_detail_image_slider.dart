import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart'
    '';
import 'package:iconsax/iconsax.dart';
class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            //main pic inte code

            SizedBox(
              height: 400,
              child: Padding(
                padding:
                const EdgeInsets.all(Sizes.productImageRaius * 2),
                child: Center(
                    child: Image(
                        image: AssetImage(TImage.productImage1))),
              ),
            ),

            //Image slider kodukan
            Positioned(
              right: 0,
              bottom: 3,
              left: Sizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_,__) => const SizedBox(width:Sizes.spaceBtwItems),
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) =>
                      TRoundedImage(
                        width: 80,
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(Sizes.sm),
                        imageUrl: TImage.productImage1,
                      ),
                ),
              ),
            ),

            //AppBar Icon
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5 , color: Colors.red,)
              ],
            )

          ],
        ),
      ),
    );
  }
}