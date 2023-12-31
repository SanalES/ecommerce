import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/features/personalization/screens/cart/widgets/tCart_items.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(title: Text("Orders" ,style: Theme.of(context).textTheme.headlineSmall, ),showBackArrow: true,),
  body: SingleChildScrollView(
    child: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
    child: Column(
      children: [

         ///  -------Cartile Items Kanikan
        const TCartItem(showAddRemoveButtons: false),
        const SizedBox(height: Sizes.spaceBtwSections,),

        ///Coupon , Offers
        TRoundedContainer(
         showBorder: true,
          backgroundColor:  dark ? TColors.dark : Colors.white,
          padding: EdgeInsets.only(top:Sizes.sm , right: Sizes.sm , left: Sizes.md ),
          child: Row(
            children: [
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Have a coupon code? Enter Here"
                  ),
                ),
              )
            ],
          ),
        )

      ],
    ),),
  ),
    );
  }
}
