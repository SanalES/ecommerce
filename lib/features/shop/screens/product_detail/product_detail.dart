import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_detail/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_detail/widgets/product-attributes.dart';
import 'package:ecommerce/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_detail/widgets/rating_share_widget.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';


class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar: ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product imgae ------------/////

            ProductImageSlider(),

            ///product details --------//////

            Padding(
              padding: EdgeInsets.only(
                  right: Sizes.defaultSpace,
                  left: Sizes.defaultSpace,
                  bottom: Sizes.defaultSpace),
              child: Column(
                children: [

                 ///Rating and share widget ...

                  RatingAndShare(),

                  ///price , title ,Stock , brand
                  ProductMetaData(),

                  ///Attributessssss--------------

                  ProductAttributes(),
                  const SizedBox(height: Sizes.spaceBtwSections,),

                  ///Checkout Button

                  SizedBox(
                    width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: Text("Checkout"))),
                  const SizedBox(height: Sizes.spaceBtwSections,),

                   ///DESCRIPTION

                  const  TSectionHeading(title: "Description" ,showActionButton: false,),
                  const SizedBox(height: Sizes.spaceBtwItems,),
                  const ReadMoreText(
                    "A Light weight Flexible & Breathable Spider Web Mesh shoes with a 3D look gives an attractive appeal .Sock liner to give comfort and Synergy Outsole Rubber outsole is engineered in such a way that it gives maximum traction with minimum rubber component. Extended rubber part on side profile at heel area gives you great stability while running." , trimLength: 2 , trimMode: TrimMode.Line,trimCollapsedText: "Show More",
                    trimExpandedText: "Less",
                    moreStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.w800) ,),

                ///Reviews
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TSectionHeading(title: "Review(199" , onPressed: () {},showActionButton: false,),
                  IconButton(onPressed: () {}, icon:Icon( Iconsax.arrow_right1 , size: 18,) ,)
                ],
              ),

              const SizedBox(height: Sizes.spaceBtwSections,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
