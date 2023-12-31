import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSocial_Buttons extends StatelessWidget {
  const TSocial_Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {}, icon: const Image(width: Sizes.iconMd,
            height: Sizes.iconMd,
            image: AssetImage(TImage.google),)),
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {}, icon: const Image(width: Sizes.iconMd,
            height: Sizes.iconMd,
            image: AssetImage(TImage.facebook),)),
        ),
      ],
    );
  }
}

