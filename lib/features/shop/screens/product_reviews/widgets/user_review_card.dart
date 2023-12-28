import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar( backgroundImage: AssetImage(TImage.user),),
                const SizedBox(width: Sizes.spaceBtwItems),
                Text("Amal Antony" , style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),

        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems,),

        ///Review

        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            const SizedBox(width:  Sizes.spaceBtwItems,),
            Text("23 Dec 2023 " , style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems,),
        ReadMoreText("The user interface was quite awesome good work sanal you can do more like this",
        trimLines: 2,trimExpandedText: "Show Less", trimCollapsedText: "Show More",trimMode: TrimMode.Line,
        moreStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: TColors.primary),
          lessStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: TColors.primary),
        ),

        ///Company Reply
         TRoundedContainer(
           backgroundColor: dark ? TColors.darkerGrey :TColors.grey,
           child: Padding(padding:
           const EdgeInsets.all(Sizes.md),
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                       Text(" Luxify" , style: Theme.of(context).textTheme.titleMedium,),
                       Text(" 24 Dec 2023" , style: Theme.of(context).textTheme.bodyMedium,),
                  ],
               ),
               const SizedBox(height: Sizes.spaceBtwItems,),
               ReadMoreText(
                 "The user interface was quite awesome good work sanal you can do more like this",
                 trimLines: 2,
                 trimExpandedText: "Show Less",
                 trimCollapsedText: "Show More",
                 trimMode: TrimMode.Line,
                 moreStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: TColors.primary),
                 lessStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: TColors.primary),
               ),
             ],
             )
               ),
         ),
         ],
       );
     }
    }
