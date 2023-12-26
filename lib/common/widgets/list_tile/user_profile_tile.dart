import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, required this.onPressed,
  });
final onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImage.user,
        width: 50,
        height: 50,
        padding: 10,
      ),
      title: Text(" Sanal" , style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),
      subtitle: Text("Sanales@gamil.com" , style: Theme.of(context).textTheme.bodyMedium?.apply(color: TColors.white),),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Iconsax.edit , color: TColors.white,)),
    );
  }
}
