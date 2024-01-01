import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/personalization/screens/cart/widgets/tCart_items.dart';
import 'package:ecommerce/features/personalization/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce/features/personalization/screens/checkout/widgets/billing_amount.dart';
import 'package:ecommerce/features/personalization/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(title: Text("Orders" ,style: Theme.of(context).textTheme.headlineSmall, ),showBackArrow: true,),
  body: SingleChildScrollView(
    child: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
    child: Column(
      children: [

         ///  -------Cartile Items Kanikan
        const TCartItem(showAddRemoveButtons: false),
        const SizedBox(height: Sizes.spaceBtwSections,),

        ///Coupon , Offers
        CouponCode(),
        const SizedBox(height: Sizes.spaceBtwSections,),

        ///Billing Sec----
        TRoundedContainer(
          showBorder: true,
          padding: const EdgeInsets.all(Sizes.md),
          backgroundColor: dark ? TColors.black : TColors.white,
          child: Column(
            children: [
              ///Pricing
              BillingAmountSection(

              ),
              const SizedBox(height: Sizes.spaceBtwItems,),

              ///Divider
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems,),

              ///Paymentum karyangalum
              BillingPaymentSection(),
              const SizedBox(height: Sizes.spaceBtwItems,),

              ///Address okke
              BillingAddress(),
            ],
          ),

        )
      ],
    ),),
  ),

      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton
            (onPressed: () =>
            Get.to(() => SuccessScreen (
                image: TImage.paymentsucess,
                title: "",
                subTitle: "Your Item Will Shop Soon",
                onPressed: () => Get.to(()=> const NavigationMenu()),
            ),
            ),
        child: const Text("Checkout \$256"),),
      ),

    );
  }
}
