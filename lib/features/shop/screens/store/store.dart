import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: () {},),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
                  expandedHeight: 440,

                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(Sizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ///---search bar
                        const SizedBox(height: Sizes.spaceBtwItems),
                        const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                        const SizedBox(height: Sizes.spaceBtwSections),

                        ///---featured brands
                        TSectionHeading(title: 'Featured Brands', showActionButton: true, onPressed: () {}),
                        const SizedBox(height: Sizes.spaceBtwItems / 1.5),

                        TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: (){},
                            child: TRoundedContainer(
                              padding: const EdgeInsets.all(Sizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  ///--icon
                                  Flexible(
                                    child: TCircularImage(
                                      isNetworkImage: false,
                                      image: TImage.productImage1,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                                    ),
                                  ),
                                  const SizedBox(width: Sizes.spaceBtwItems / 2),

                                  ///--text
                                  Expanded(
                                    child:Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const TBrandTitleWithVerifiedIcon(title: 'Adidas', brandTextSize: TextSizes.large),
                                        Text('256 products ',
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
                        }),
                      ],
                    ),
                  ),

                  ///--tabs
                  bottom:const TabBar(tabs:[
                    Tab(
                      child: Text(
                        'Sports',
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),
                    ),
                    Tab(child: Text('Furniture'),),
                    Tab(child: Text('Electronics',style: TextStyle(fontSize: 15),maxLines: 1,
                      overflow: TextOverflow.ellipsis,)),
                    Tab(child: Text('Cloths',
                      overflow: TextOverflow.ellipsis,)),
                  ])
                ),
              ];
            },
            ///--body
            body: const TabBarView(
              children: [
              CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab()
              ],
            )),
      ),
    );
  }
}


