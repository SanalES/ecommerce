import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/personalization/screens/cart/widgets/tCart_items.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: TAppBar(title: Text("Cart" ,style: Theme.of(context).textTheme.headlineSmall, ),showBackArrow: true,),
      body: Padding(padding: const EdgeInsets.all(Sizes.defaultSpace),
      child:
          TCartItem(showAddRemoveButtons: true,),
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(onPressed: () {},child: const Text("Checkout \$256"),),
      ),

    );
  }
}



