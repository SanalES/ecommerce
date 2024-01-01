import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: TAppBar(title: Text("Order" , style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body: const Padding(padding: EdgeInsets.all(Sizes.defaultSpace),

      ///orders
      child: Order,
      ),
    );
  }
}
