import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image

        TRoundedImage(imageUrl: TImage.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(Sizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,),
        const SizedBox(width: Sizes.spaceBtwItems,),


        ///Title ...price okke
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: "Adidas"),
              Flexible(child: const TProductTitleText(title: "Black Sports Shoes" , maxLines: 1,)),

              ///Attributes
              Text.rich(TextSpan(
                  children: [
                    TextSpan(text: "Color" , style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: "Green" , style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: "Size" , style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: "UK 10" , style: Theme.of(context).textTheme.bodyLarge),
                  ]
              ))


            ],
          ),
        )


      ],
    );
  }
}
