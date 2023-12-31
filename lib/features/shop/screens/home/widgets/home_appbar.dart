import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/features/personalization/screens/cart/cart.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
          Text(TTexts.homeAppbarsubTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.white),),
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: ()=>Get.to(() =>const CartScreen()  ) , iconColor:TColors.white,)
      ],
    );
  }
}

