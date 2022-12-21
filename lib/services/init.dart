
import 'package:get/get.dart';
import 'package:getx/controller.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'api_services.dart';
import 'network_Rapid_client.dart';
import 'network_client.dart';


Future<void> initData() async {
  Get.lazyPut(() => NetworkClient(),fenix: true,);
  Get.lazyPut(() => NetworkRapidClient(),fenix: true,);

  Get.lazyPut(() => ApiService(networkClient: Get.find(), rapidnetworkclient: Get.find(),),fenix: true,);
Get.lazyPut(() => alpha(api: Get.find()),fenix: true,);

  //Controllers

  //Demage Report Controller

  //Apis Client

  // String userToken = sharedP.getString('UserToken')!;
}
