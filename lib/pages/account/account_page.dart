import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/account_widget.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Center(
          child: BigText(
              text: "Profile",size: 24,color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
           children: [
             //profile Icon
             AppIcon(icon: Icons.person,
             backgroundColor: AppColors.mainColor,
             iconColor: Colors.white,
             iconSize: Dimensions.height45+Dimensions.height30,
             size: Dimensions.height15*10,),
             SizedBox(height: Dimensions.height30,),

             Expanded(
               child: SingleChildScrollView(
               child: Column(
                 children: [
                   //name
                   AccountWidget(
                       appIcon:  AppIcon(icon: Icons.person,
                         backgroundColor: AppColors.mainColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),
                       bigText: BigText(text: "Hind")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //phone
                   AccountWidget(
                       appIcon:  AppIcon(icon: Icons.phone,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),
                       bigText: BigText(text: "07 76 02 93 97")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //email
                   AccountWidget(
                       appIcon:  AppIcon(icon: Icons.email,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),
                       bigText: BigText(text: "hindamraoui@gmail.com")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //adresse
                   AccountWidget(
                       appIcon:  AppIcon(icon: Icons.location_on,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),
                       bigText: BigText(text: "Fill your agresse ")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //message
                   AccountWidget(
                       appIcon:  AppIcon(icon: Icons.message_outlined,
                         backgroundColor: Colors.redAccent,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),
                       bigText: BigText(text: "msg")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //message
                   AccountWidget(
                       appIcon:  AppIcon(icon: Icons.message_outlined,
                         backgroundColor: Colors.red,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),
                       bigText: BigText(text: "put your msg here")
                   ),
                 ],
               ),
             ),),
           ],
        ),
      ),
    );
  }
}
