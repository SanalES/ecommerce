import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///AppBar
      appBar: TAppBar(title: Text("Reviews & Ratings"),showBackArrow: true,),

      ///Body

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and review based on the product used by the users ")
              const SizedBox(height: Sizes.spaceBtwItems,),

              Row(
                children: [
                  Expanded( flex : 3 ,child: Text("4.1", style: Theme.of(context).textTheme.displayLarge,)),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Text("5" , style: Theme.of(context).textTheme.bodyMedium,),
                        Expanded(
                          child: SizedBox(
                            width: TDeviceUtils.getScreenWidth(context)* 0.5,
                            child: LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 11,
                                backgroundColor: TColors.grey,
                              valueColor:AlwaysStoppedAnimation( TColors.primary,),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        
      ),

    );
  }
}
