import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedaddress});
  final bool selectedaddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
          width: double.infinity,
          showBorder: true,
          backgroundColor: selectedaddress? TColors.primary.withOpacity(0.5) :Colors.transparent  ,
      borderColor: selectedaddress? Colors.transparent : dark ? TColors.darkerGrey :TColors.grey,
      margin: EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedaddress ? Iconsax.tick_circle5 : null,
              color: selectedaddress ? dark ? TColors.light:TColors.dark: null,
            ),
          ),
          Column(
            children: [
              Text(
                " Elavumkal House Vellaramkunnu",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: Sizes.sm /2,),

            ],
          )
        ],
      ),
    );
  }
}
