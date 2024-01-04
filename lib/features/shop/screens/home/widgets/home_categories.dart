
import 'package:ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce/features/shop/screens/sub_category/sub_category.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(image:TImage.sportIcon,title: "Shoes",onTap: ()=> Get.to(()=>const SubCategory()),);
        },
      ),
    );
  }
}
