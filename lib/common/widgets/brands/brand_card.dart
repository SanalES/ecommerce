import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTap});

  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
   onTap: onTap,

   //container design
   child: TRoundedContainer(
     showBorder: showBorder,
     backgroundColor: Colors.transparent,
     padding: const EdgeInsets.all(Sizes.sm),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [

         //Icon --------evde
         Flexible(child: TCircularImage(
           isNetworkImage: false,
           image: TImage.productImage1,
           backgroundColor: Colors.transparent,
           overlayColor: isDark ? TColors.white : TColors.black,

     ),
         ),
         const SizedBox(width: Sizes.spaceBtwItems/2,),

         //Texts -----------------
         Flexible(
           child:Column(
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
               Text('25 products ',
                 overflow: TextOverflow.ellipsis,
                 style: Theme.of(context).textTheme.labelMedium,
               ),
             ],
           ),
         ),

       ],
     ),

   ),

    );
  }
}
