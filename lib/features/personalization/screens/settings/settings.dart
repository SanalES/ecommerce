import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/list_tile/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/personalization/screens/settings/settings.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //header kodukan
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),

                //profile
                UserProfileTile(onPressed: () => Get.to(()=> const ProfileScreen()),),
                SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
              ],
            )
            ),
            
            Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              children: [
                
                //Account Settings
                TSectionHeading(title: "Account Setting", showActionButton: false,),
                SizedBox(height: Sizes.spaceBtwItems,),

                SettingsMenuTile(icon: Iconsax.safe_home,
                    title: 'Addresses',
                    subTitle: "Set Delivery Address",
                    onTap: () => Get.to(()=> const UserAddressScreen()),
                ),
                SettingsMenuTile(icon: Iconsax.shopping_cart,
                  title: 'My Cart',
                  subTitle: "Checkout items added to cart",
                  onTap: () {},
                ),SettingsMenuTile(icon: Iconsax.bag_tick,
                  title: 'Orders',
                  subTitle: "Details of products you ordered",
                  onTap: () {},
                ),SettingsMenuTile(icon: Iconsax.bank,
                  title: 'Payment Methods',
                  subTitle: "Linked payment methods , upi , bank etc",
                  onTap: () {},
                ),SettingsMenuTile(icon: Iconsax.discount_shape1,
                  title: "Coupons",
                  subTitle: "Coupons available for you",
                  onTap: () {},
                ),SettingsMenuTile(icon: Iconsax.notification,
                  title: 'Notifications',
                  subTitle: "Notifications for you",
                  onTap: () {},
                ),SettingsMenuTile(icon: Iconsax.setting,
                  title: 'Account Privacy',
                  subTitle: "Manage connected accounts",
                  onTap: () {},
                ),

                SizedBox(height: Sizes.spaceBtwSections,),
                TSectionHeading(title: "App Settings" ,showActionButton: false,),
                SizedBox(height: Sizes.spaceBtwItems,),
                SettingsMenuTile(icon: Iconsax.document_upload1, title: "Load Data", subTitle: "Cloudil add cheyyan olla data", onTap: () {}),

                SettingsMenuTile(icon: Iconsax.location,
                    title: "Location",
                    subTitle:"Set recommendations based on location",
                    trailing:Switch(value: true,onChanged: (value) {}),
                    onTap: (){},
                ),

                SettingsMenuTile(icon: Iconsax.security_user1,
                  title: "Privacy Mode",
                  subTitle:"for 18+ lalala",
                  trailing:Switch(value: false,onChanged: (value) {}),
                  onTap: (){},
                ),

                SettingsMenuTile(icon: Iconsax.image,
                  title: "Quality Settings",
                  subTitle:"Set image quality ",
                  trailing:Switch(value: true,onChanged: (value) {}),
                  onTap: (){},
                ),

                ///Logout

                const SizedBox(height: Sizes.spaceBtwSections,),
                SizedBox(
                    width:double.infinity,
                child: OutlinedButton(onPressed: (){}, child: const Text("Logout"),),
                ),
                const SizedBox(height: Sizes.spaceBtwSections*2.5,)

              ],
            ),)

          ],




        ),
      ),
    );
  }
}

