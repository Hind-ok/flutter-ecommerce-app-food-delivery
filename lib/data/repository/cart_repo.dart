import 'dart:convert';

import 'package:food_delivery/models/cart_model.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo{
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});

  List<String> cart=[];
  List<String> cartHistory=[];

  void addToCartList(List<CartModel> cartList){
    //sharedPreferences.remove(AppConstants.CART_LIST);
    //sharedPreferences.remove(AppConstants.CART_HISTORT_LIST);
    //return;
    var time= DateTime.now().toString();
    cart=[];

    //convert object to  string bcz sharePrefrences onmy accept string

    cartList.forEach((element){
      element.time=time;
      return cart.add(jsonEncode(element));
    });

    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
    //print(sharedPreferences.getStringList(AppConstants.CART_LIST));
    //getCartList();
  }

  List<CartModel> getCartList() {
   // List<CartModel> cartList= [];
    List<String> carts=[];

    if (sharedPreferences.containsKey(AppConstants.CART_LIST)) {
      carts = sharedPreferences.getStringList(AppConstants.CART_LIST)!;
      print("inside getCartList"+carts.toString());
    }

    List<CartModel> cartList = [];

    carts.forEach((element) =>cartList.add(CartModel.fromJson(jsonDecode(element))));

    return cartList;
  }

  List<CartModel> getCartHistoryList(){
   if(sharedPreferences.containsKey(AppConstants.CART_HISTORT_LIST)){
     cartHistory=[];
     cartHistory=sharedPreferences.getStringList(AppConstants.CART_HISTORT_LIST)!;
   }
   List<CartModel> cartListHistory=[];
   //   cartHistory.forEach((element)=>cartListHistory.add(CartModel.fromJson(jsonEncode(element))));
   for (var element in cartHistory) {
     cartListHistory.add(CartModel.fromJson(jsonDecode(element)));
   }
   return cartListHistory;
  }

  void addToCartHistoryList() {
    if(sharedPreferences.containsKey(AppConstants.CART_HISTORT_LIST)){
      cartHistory=sharedPreferences.getStringList(AppConstants.CART_HISTORT_LIST)!;
    }
  for(int i=0;i<cart.length;i++){
  //print("history "+cart[i]);
  cartHistory.add(cart[i]);
}
  removeCart();
  // Sauvegarder l'historique dans SharedPreferences
  sharedPreferences.setStringList(AppConstants.CART_HISTORT_LIST, cartHistory);
  print("the length of history list is "+getCartHistoryList().length.toString());
  for(int i=0;i<getCartHistoryList().length;i++){
    print("the time  for the order is "+getCartHistoryList()[i].time.toString());
  }
  }

  removeCart(){
    cart=[];
    sharedPreferences.remove(AppConstants.CART_LIST);
  }
}


