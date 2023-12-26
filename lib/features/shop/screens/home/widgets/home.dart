import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Container(
                    child: const Column(
              children: [
                //appbar evde----------------

                THomeAppBar(),
                SizedBox(
                  height: Sizes.spaceBtwSections,
                ),

                //Searchbar-----------------
                TSearchContainer(
                  text:'Search in the store',
                ),

                SizedBox(
                  height: Sizes.spaceBtwSections,
                ),

                //Categories Heading----------------------
                Padding(
                  padding: EdgeInsets.only(left: Sizes.defaultSpace),
                  child: Column(
                    //heading--------------------
                    children: [
                      TSectionHeading(
                        textColor: Colors.white,
                        title: 'Popular Categories',
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: Sizes.spaceBtwItems,
                      ),

                      // -----------------   //categories----------------------
                      THomeCategories()
                    ],
                  ),

                ),
              const  SizedBox(height: Sizes.spaceBtwSections),
              ],
            ))),

            /// body part for banners and etc evde cheyum
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),

              // banners ellam evde an kodukendiyath
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImage.promo_banner12,
                      TImage.promo_banner1,
                      TImage.promo_banner2,
                    ],
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),

                  //Heading
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItems,
                  ),

                  //products
                  TGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
