import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import '../controllers/popular_product_controller.dart';
Future<void> init() async {
  // API Client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));

  // Repositories
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));

  // Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
}