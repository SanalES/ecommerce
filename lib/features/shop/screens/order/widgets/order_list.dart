import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_,__) => const SizedBox(height: Sizes.spaceBtwItems,),
      itemBuilder: (_ , index)=> TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(Sizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
        Row(
        children: [
        ///ICON
        Icon(Iconsax.ship),
        SizedBox(width: Sizes.spaceBtwItems / 2,),

          ///status and date okke
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Processing" , style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary , fontWeightDelta: 1),),
                Text("1 Jan 2024" , style: Theme.of(context).textTheme.headlineSmall,),
              ],
            ),
          ), 
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_34 , size: Sizes.iconSm,))
        ],
      ),
              const SizedBox(height: Sizes.spaceBtwItems,),

              ///second row
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        ///ICON
                        Icon(Iconsax.tag),
                        SizedBox(width: Sizes.spaceBtwItems / 2,),

                        ///status and date okke
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order" , style: Theme.of(context).textTheme.labelMedium),
                              Text("#122345" , style: Theme.of(context).textTheme.titleSmall,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        ///ICON
                        Icon(Iconsax.calendar),
                        SizedBox(width: Sizes.spaceBtwItems / 2,),

                        ///status and date okke
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shipping date" , style: Theme.of(context).textTheme.labelMedium),
                              Text("3-jan-2024" , style: Theme.of(context).textTheme.titleSmall,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ],
      ),
      ),
    );
  }
}
