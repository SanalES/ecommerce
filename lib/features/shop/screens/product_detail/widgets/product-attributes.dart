import 'package:ecommerce/common/widgets/chips/choice_chips.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({Key? key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: EdgeInsets.all(Sizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  TSectionHeading(title: "Other Options", showActionButton: false,),
                  SizedBox(width: Sizes.spaceBtwItems,),

                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          const TProductTitleText(title: "Price: ", smallSize: true,),

                          /// Prices okke kodukan
                          Text("\$125", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),

                          SizedBox(width: Sizes.spaceBtwItems,),

                          /// Sale Price
                          TProductPriceText(price: "110" , lineThrough: true,),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(title: "Stock" , smallSize: true,),
                          Text("234", style: Theme.of(context).textTheme.titleSmall),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              ///Descriptions etc...

              const TProductTitleText(title: "Adidas sports shoes which cab used for ............",
              smallSize: true,
              maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwItems,),

        ///Attributes
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const TSectionHeading(title: "Colors" , showActionButton: false,),
          const SizedBox(height: Sizes.spaceBtwItems /2,),
Wrap(
  spacing: 8,
  children: [
    ChoiceChips(text: "Green", selected: true, onSelected: (value) {},),
    ChoiceChips(text: "Blue", selected: false, onSelected: (value) {},),
    ChoiceChips(text: "Red", selected: false,onSelected:  (value) {} ,),
  ],
)
        ]
    ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const TSectionHeading(title: "Sizes"),
              const SizedBox(height: Sizes.spaceBtwItems /2,),
              Wrap(
                spacing: 8,
                children: [
                  ChoiceChips(text: "8", selected: true,onSelected: (value) {},),
                  ChoiceChips(text: "9", selected: false,onSelected: (value) {},),
                  ChoiceChips(text: "10", selected: false,onSelected: (value) {},),
                ],
              )
            ]
        ),

      ],
    );
  }
}

