import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: Dimensions.height20*3,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     AppIcon(icon: Icons.arrow_back_ios,
                     iconColor: Colors.white,
                       backgroundColor: AppColors.mainColor,
                       iconSize:  Dimensions.iconSize24,
                     ),
                     SizedBox(width: Dimensions.width20*5,),
                     AppIcon(icon: Icons.home_outlined,
                       iconColor: Colors.white,
                       backgroundColor: AppColors.mainColor,
                       iconSize:  Dimensions.iconSize24,
                     ),
                     AppIcon(icon: Icons.shopping_cart,
                       iconColor: Colors.white,
                       backgroundColor: AppColors.mainColor,
                       iconSize:  Dimensions.iconSize24,
                     ),
                   ],
          )),
          Positioned(
              top: Dimensions.height20*5,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height15),
                    color: Colors.red,
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                        itemCount: 10,
                          itemBuilder: (_, index){
                            return Container(
                              width: double.maxFinite,
                              height: Dimensions.height20*5,
                              child: Row(
                                children: [
                                  Container(
                                    width: Dimensions.height20*5,
                                    height: Dimensions.height20*5,
                                    margin: EdgeInsets.only(bottom: Dimensions.height10),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                          image: AssetImage(
                                            "assets/image/food0.png",
                                          )
                                      ),
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.width10,),
                                  Expanded(child: Container(
                                    height: Dimensions.height20*5,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        BigText(text: "etxt",color: Colors.black54,)
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            );
                          }),
                    ),
              ))
        ],
      ),
    );
  }
}
