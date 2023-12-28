import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce/features/personalization/screens/address/widget/single_address.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:() => Get.to(() => AddNewAddressScreen() ),
      child: const Icon(Iconsax.add , color: TColors.white,),
      backgroundColor: TColors.primary,),
    appBar: TAppBar(
      showBackArrow: true,
      title: Text("Address", style: Theme.of(context).textTheme.labelMedium,),
    ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(Sizes.defaultSpace) ,
          child: Column(
            children: [
              SingleAddress(selectedaddress: true)
               ],
          ) ,) ,
      ),
    );
  }
}
