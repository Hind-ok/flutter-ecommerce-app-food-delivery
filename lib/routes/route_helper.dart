import 'package:food_delivery/pages/auth/sign_in_page.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/home_page.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import '../pages/cart/cart_page.dart';
import '../pages/splash/splash_page.dart';


class RouteHelper{
  static const String splashPage="/splash-page";
  static const String initial="/";
  static const String popularFood="/popular-food";
  static const String recommendedFood="/recommended-food";
  static const String cartPage="/cart-page";
  static const String signIn="/sign-in";

  static String getSplashPage()=>'$splashPage';
  static String getInitial()=>'$initial';
  static String getPoularFood(int pageId, String page)=>'$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood(int pageId, String page)=>'$recommendedFood?pageId=$pageId&page=$page';
  static String getCartPage()=>'$cartPage';
  static String getSingInPage()=>'$signIn';

  static List<GetPage> routes=[
    GetPage(name: splashPage, page: ()=>SplashScreen()),
    GetPage(name: initial, page: ()=>HomePage()),
    GetPage(name: signIn, page: (){
      return SignInPage();
    },transition: Transition.fade),

  GetPage(name: popularFood, page: (){
  var pageId=Get.parameters['pageId'];
  var page = Get.parameters['page'];
  return PopularFoodDetail(pageId: int.parse(pageId!), page:page!);
  },
  transition: Transition.fadeIn
  ),

  GetPage(name: recommendedFood, page: (){
  var pageId=Get.parameters['pageId'];
  var page = Get.parameters['page'];
  return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!,);
  },
  transition: Transition.fadeIn
  ),
  GetPage(name: cartPage, page: (){
  return CartPage();
  },
  transition: Transition.fadeIn
  ),
  ];
  }
