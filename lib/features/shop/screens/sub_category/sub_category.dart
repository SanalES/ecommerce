import 'dart:ffi';

import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title:Text("Sports Shirts"), showBackArrow: true,),
    body: SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
      child: Column(
        children: [
          ///Banner
          TRoundedImage(imageUrl: TImage.promo_banner1 , width: double.infinity , height: null , applyImageRadius: true,)
        ],
      ),),
    ),

    );
  }
}
