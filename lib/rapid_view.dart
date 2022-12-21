import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller.dart';

class rapid_view extends StatelessWidget {
  const rapid_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   print(Get.find<alpha>().list.length);
   Get.find<alpha>().rapiddata();
    return Scaffold(
      appBar: AppBar(),
      body:

      GetBuilder<alpha>(
        builder: (cont) {
          return  cont.list.length==0?Center(child: CircularProgressIndicator(),):Column(
            children: [
              Expanded(
                child: ListView.builder(itemCount: cont.rapidlist.length,
                    itemBuilder: (BuildContext context, int index){
                  return Container(height: 100,width: 300,
                    child: ListTile(
                     title: Text(cont.rapidlist[index].name.toString(),),
                      trailing: Container(width: 150,height: 150,
                        child: Row(
                          children: [
                            FloatingActionButton(onPressed:() {},child: Icon(Icons.add,color: Colors.black,),),
                            Container(height:20,width:20,child: Text(cont.rapidlist[index].address.toString(),)),
                            FloatingActionButton(onPressed:() {},child: Icon(Icons.minimize,color: Colors.black,),),
                          ],
                        ),
                      ),
                    ),
                  );
                    }

              ),),
            ],
          );
        }
      ),
    );
  }
}
