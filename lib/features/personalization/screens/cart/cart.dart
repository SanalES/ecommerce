import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: TAppBar(title: Text("Cart" ,style: Theme.of(context).textTheme.headlineSmall, ),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
        child:
            ListView.separated(separatorBuilder: (_,__) => const SizedBox(height: Sizes.spaceBtwSections,),
            shrinkWrap: true ,
            itemCount: 4 ,
              itemBuilder:(_, index) => Column(
                children:[
                CartItem(),
                  Row(
                    children: [
                      const SizedBox(width:70 ,),
                      
                      ///Add and remove button
                      ///
                      Row(
                        children: [
                          TCircularIcon(
                            icon:Iconsax.minus,
                          height: 32,
                          width: 32,
                          size: Sizes.md,
                          color: THelperFunctions.isDarkMode(context) ? Colors.white : Colors.black,
                          backgroundColor:THelperFunctions.isDarkMode(context) ? TColors.darkerGrey: TColors.light,
                          ),

                          const SizedBox(width: Sizes.spaceBtwItems,),
                          Text("2" , style: Theme.of(context).textTheme.titleSmall,),
                          const SizedBox(width: Sizes.spaceBtwItems,),
                          TCircularIcon(
                            icon:Iconsax.add,
                            height: 32,
                            width: 32,
                            size: Sizes.md,
                            color:  Colors.white,
                            backgroundColor: TColors.primary,
                          ),
                        ],
                      ),



                    ],
                  ),

                   ],
                 )
              ,),
              ),
      ),

    );
  }
}

