import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

import 'app_icon.dart';
import 'big_text.dart';

class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;
  AccountWidget({super.key,required this.appIcon,required this.bigText});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      padding: EdgeInsets.only(left: Dimensions.width20,
      top: Dimensions.width10,
      bottom: Dimensions.width10,
      ),
      child: Row(
        children: [
          appIcon,
          SizedBox(width: Dimensions.width20,),
          bigText,
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              offset: Offset(0, 2),
              color: Colors.grey.withOpacity(0.2),
            )
          ]
      ),
    );
  }
}
