 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
   const RecommendedFoodDetail({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: CustomScrollView(
         slivers: [
           SliverAppBar(
             bottom: PreferredSize(
               preferredSize: Size.fromHeight(20),
               child: Container(
                 color: Colors.white,
                 child: Center(child: BigText(size: Dimensions.font26,text: "Chinese Side")),
                 width: double.maxFinite,
                 padding: EdgeInsets.only(top: 5, bottom: 10),
               ),
             ),
             pinned: true,
             backgroundColor: AppColors.yellowColor,
             expandedHeight: 300,
             flexibleSpace: FlexibleSpaceBar(
               background: Image.asset(
                   "assets/image/food0.png",
                   width: double.maxFinite,
                   fit: BoxFit.cover,
               ),
             ),
           ),
           SliverToBoxAdapter(
             child: Text(
               "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then partially cooked basmati rice. A drizzle of saffron milk and a sprinkle of garam masala bring it all together before sealing the pot and letting the flavors infuse over low heat. This traditional biryani method creates a fragrant and deliciously rich one-pot meal.\n Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then partially cooked basmati rice. A drizzle of saffron milk and a sprinkle of garam masala bring it all together before sealing the pot and letting the flavors infuse over low heat. This traditional biryani method creates a fragrant and deliciously rich one-pot meal.\n Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then partially cooked basmati rice. A drizzle of saffron milk and a sprinkle of garam masala bring it all together before sealing the pot and letting the flavors infuse over low heat. This traditional biryani method creates a fragrant and deliciously rich one-pot meal.\n Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then partially cooked basmati rice. A drizzle of saffron milk and a sprinkle of garam masala bring it all together before sealing the pot and letting the flavors infuse over low heat. This traditional biryani method creates a fragrant and deliciously rich one-pot meal.\n Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then partially cooked basmati rice. A drizzle of saffron milk and a sprinkle of garam masala bring it all together before sealing the pot and letting the flavors infuse over low heat. This traditional biryani method creates a fragrant and deliciously rich one-pot meal.\n Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then partially cooked basmati rice. A drizzle of saffron milk and a sprinkle of garam masala bring it all together before sealing the pot and letting the flavors infuse over low heat. This traditional biryani method creates a fragrant and deliciously rich one-pot meal.\nChicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then partially cooked basmati rice. A drizzle of saffron milk and a sprinkle of garam masala bring it all together before sealing the pot and letting the flavors infuse over low heat. This traditional biryani method creates a fragrant and deliciously rich one-pot meal."
             ),
           )
         ],
       ),
     );
   }
 }
 