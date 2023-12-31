import 'package:ecommerce/common/widgets/products/cart/add_remove_button_cart.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key, required this.showAddRemoveButtons,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(separatorBuilder: (_,__) => const SizedBox(height: Sizes.spaceBtwSections,),
      shrinkWrap: true ,
      itemCount: 4 ,
      itemBuilder:(_, index) => Column(
        children:[
          ///Cart iTems
          CartItem(),
          if(showAddRemoveButtons)
          SizedBox(height: Sizes.spaceBtwItems,),

          ///add or remove ...
          if(showAddRemoveButtons)
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width:70 ,),


                  ///Add and remove button
                  ProductQualityWithAddandRemove(),
                ],
              ),
              SizedBox(width:120 ,),

              ///price
              TProductPriceText(price: "256")




            ],
          ),

        ],
      )
      ,);
  }
}