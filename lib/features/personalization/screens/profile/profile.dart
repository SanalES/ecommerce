import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            //profilee Pictureee
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      image: TImage.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture")),
                  ],
                ),
              ),

              //Deatils -----------

              const SizedBox(height: Sizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems,),

             //profile
              const TSectionHeading(title: 'Profile Details' , showActionButton: false,),
              const SizedBox(height: Sizes.spaceBtwItems,),

              ProfileMenu(
                onPressed: () { },
                title: 'Name',
                value: 'Sanal es',),
              ProfileMenu(
                onPressed: () { },
                title: 'Username',
                value: 'Sanal',),

              const SizedBox(height: Sizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems,),

           ///baki sanangal
              const TSectionHeading(title: 'Profile Information' , showActionButton: false,),
              const SizedBox(height: Sizes.spaceBtwItems,),

              ProfileMenu(onPressed: (){}, title: 'User-ID',  value: "12121-2322-43434" ,icon: Iconsax.copy,),
              ProfileMenu(onPressed: (){}, title: 'Email',  value: "sanal@gmail.com"),
              ProfileMenu(onPressed: (){}, title: 'Gender',  value: "Male"),
              ProfileMenu(onPressed: (){}, title: 'Date of Birth',  value: "26-04-2002"),
              
              const Divider(),

              SizedBox(height: Sizes.spaceBtwItems,),
              
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text("Deactivate Account" , style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
