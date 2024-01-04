import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Container(
          width: 310,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow:  [TShoadowStyle.vericalProductShadow],
            borderRadius: BorderRadius.circular(Sizes.productImageRaius),
            color: dark ? TColors.darkerGrey : TColors.white,
          ),
      child: Row(
        children: [
          TRoundedContainer(
            ///Thumbnail
            height: 120 ,
            padding: const EdgeInsets.all(Sizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                SizedBox(child: TRoundedImage(imageUrl: TImage.productImage1 , applyImageRadius: true,)),
              ],

            ),

          )
        ],
      ),
    );
  }
}
