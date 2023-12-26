import 'package:ecommerce/common/widgets/brands/brand_card.dart';

import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: const EdgeInsets.all(Sizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Column(
        children: [

          //Brand with Products Count
          const BrandCard(showBorder: false),

          const SizedBox(height: Sizes.spaceBtwItems,),

          //Brand With Top 3 Image
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }


  Widget brandTopProductImageWidget(String image, context) {
    return Flexible(child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(Sizes.md),
      margin: const EdgeInsets.all(Sizes.sm),
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
      child:  Image(fit: BoxFit.contain, image: AssetImage(image),),

    ),
    );
  }
}