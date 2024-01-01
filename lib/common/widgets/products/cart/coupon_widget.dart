import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);

    return TRoundedContainer(
      showBorder: true,
      backgroundColor:  dark ? TColors.dark : Colors.white,
      padding: EdgeInsets.only(top:Sizes.sm , right: Sizes.sm , left: Sizes.md ),
      child: Row(
        children: [

          ///Couponte TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Have a coupon code? Enter Here",
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,

              ),
            ),
          ),

          ///Button kodukn

          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom
                (foregroundColor: dark ? TColors.white.withOpacity(0.5) : TColors.dark.withOpacity(0.5),
                  backgroundColor:TColors.grey.withOpacity(0.1),
                  side: BorderSide(color: Colors.grey.withOpacity(0.1))),
              child: Text("Apply"),

            ),
          )
        ],
      ),
    );
  }
}
