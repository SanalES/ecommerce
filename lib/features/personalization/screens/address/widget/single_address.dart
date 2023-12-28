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
          showBorder: true,
          padding: const EdgeInsets.all(Sizes.md),
          width: double.infinity,
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

              color: selectedaddress ? dark ?
              TColors.light:TColors.dark: null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Sanal ES",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: Sizes.sm /2,),
              const Text("9207321967" ,maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: Sizes.sm /2,),
              Text(" Elavumkal House Idukki", softWrap: true,)

            ],
          )
        ],
      ),
    );
  }
}
