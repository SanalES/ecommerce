import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
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
                      
                      ///Add and remove button
                      ///
                      TCircularIcon(
                        icon:Iconsax.minus,
                      height: 32,
                      width: 32,
                      size: Sizes.md,
                      color: THelperFunctions.isDarkMode(context) ? Colors.white : Colors.black,),
                    ],
                  )

                   ],
                 )
              ,),
              ),
      ),

    );
  }
}

