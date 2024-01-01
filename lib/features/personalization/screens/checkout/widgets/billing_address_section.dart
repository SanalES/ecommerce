import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: "Shipping Address" , buttonTitle: "Change" , onPressed: (){},),
        Text("Sanal ES" , style: Theme.of(context).textTheme.bodyLarge,),
         const SizedBox(height: Sizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.phone , color: Colors.grey , size: 16,),
            const SizedBox(width: Sizes.spaceBtwItems,),
            Text("9207321961", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_city , color: Colors.grey , size: 16,),
            const SizedBox(width: Sizes.spaceBtwItems,),
            Expanded(child: Text("Elavumkal House Idukki", style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),
          ],
        ),
      ],
    );
  }
}
