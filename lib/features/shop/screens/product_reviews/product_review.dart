import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///AppBar
      appBar: const TAppBar(title: Text("Reviews & Ratings"), showBackArrow: true,),

      ///Body

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and review based on the product used by the users "),
              const SizedBox(height: Sizes.spaceBtwItems,),

               ///Overall Product Ratings
                 const OverallProductRating(),

              ///Ratings
               const TRatingBarIndicator(
                 rating: 4.2,),
              Text("10345" , style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: Sizes.spaceBtwSections,),


              ///User Reviews
             UserReviewCard(),


            ],
          ),
        ),

      ),

    );
  }
}
