import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_detail/widgets/rating_share_widget.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/product_review.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/progress_indicatorand_rating.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///AppBar
      appBar: TAppBar(title: Text("Reviews & Ratings"), showBackArrow: true,),

      ///Body

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ratings and review based on the product used by the users "),
              SizedBox(height: Sizes.spaceBtwItems,),

               ///Overall Product Ratings
                 OverallProductRating(),

              ///Ratings
               TRatingBarIndicator(
                 rating: 4.2,),
              Text("10345" , style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: Sizes.spaceBtwSections,),


              ///User Reviews

              U
            ],
          ),
        ),

      ),

    );
  }
}
