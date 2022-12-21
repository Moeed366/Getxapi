import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx/services/api_services.dart';
import 'Model.dart';
import 'Models/rapid_model.dart';

class alpha extends GetxController{
  final ApiService api;
  alpha({required this.api});

   List<Grocery> list=[];
  List<rapid> rapidlist=[];
Future  <void> getdata()async{

  final response = await api.getProfileData();
  if (response.statusCode==200){

    Map<String ,dynamic> map=jsonDecode(response.toString());
    list=[];
    list.clear();
    list=(map['Grocery']as List).map((e) => Grocery.fromJson(e)).toList();
    print('length of list ');
    print(list.length);
    update();
  }
  else{
    Get.snackbar("title", "message");
  }
  update();

}


  Future  <void> rapiddata()async{

    final response = await api.getrapiddata();
    if (response.statusCode==200){
      print('***********');
      print(response.data.toString());
      rapidlist.clear();
     rapidlist = json.decode(response.data.toString());




 // rapidlist.add(response.data.toString());
  print('.................');
 print(rapidlist);
 // print(rapidlist.length);
      // rapidlist=[];
      // rapidlist.clear();
      // rapidlist.add(rapid.fromJson(jsonDecode(response.toString())));
      // print('length of list ');
      // print(rapidlist.length);
      // update();
    }
    else{
      Get.snackbar("title", "message");
    }
    update();

  }

 /* Future<Album> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Album.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }*/
}