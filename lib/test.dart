
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'dart:convert' as convert;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dio/dio.dart';



class S_dashboard extends StatefulWidget {

  S_dashboard({Key? key,}) : super(key: key);

  @override
  State<S_dashboard> createState() => _S_dashboardState();
}




class _S_dashboardState extends State<S_dashboard> {


  var choice ;
  // initState(){

  // };
  void initState() {
    super.initState();
    choice= 'All';

  }

  String src="";
  var length;
  @override


  var function;
  Widget build(BuildContext context) {
    setState(() {
      if(choice=="New"){

      }
      else if(choice=="Vegetable"){

      }
      else if(choice=="Fruits"){

      }
      else if(choice=="All"){


      }

    });

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), // Set this height
        child: Container(

        ),
      ),



      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },

        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container( //width: 60,
                        child: ChoiceChip(
                          /* avatar: image.asset(
                                   "assets/left.png",
                                   matchTextDirection: false,
                                   width: 20.0),*/
                            label: Text('All',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                            labelPadding:
                            EdgeInsets.symmetric(horizontal: 10),
                            selected: choice == 'All',
                            onSelected: (bool selected) {
                              setState(() {
                                //  getnew();
                                choice = selected ? 'All' : null;
                                //   print('gsdgsdffgfgfgggggggggggggg'+choice);
                              });
                            },
                            selectedColor: Colors.amber,
                            shape: ContinuousRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(5.0)))),
                    Container( //width: 90,
                        child: ChoiceChip(
                          /* avatar: image.asset(
                                   "assets/left.png",
                                   matchTextDirection: false,
                                   width: 20.0),*/
                            label: Text('New',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                            labelPadding:
                            EdgeInsets.symmetric(horizontal: 10),
                            selected: choice == 'New',
                            onSelected: (bool selected) {
                              setState(() {
                                //  getnew();
                                choice = selected ? 'New' : null;
                                //   print('gsdgsdffgfgfgggggggggggggg'+choice);
                              });
                            },
                            selectedColor: Colors.amber,
                            shape: ContinuousRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(5.0)))),
                    Container( //width: 90,
                        child: ChoiceChip( //backgroundColor:Colors.blue ,
                          /* avatar: image.asset(
                                   "assets/right.png",
                                   matchTextDirection: false,
                                   width: 20.0),*/
                            label: Text('Fruits',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                            labelPadding:
                            EdgeInsets.symmetric(horizontal: 10),
                            selected: choice == 'Fruits',
                            onSelected: (bool selected) {
                              setState(() {
                                // getfruit();
                                choice = selected ? 'Fruits' : null;
                                // print('gsdgsdffgfgfgggggggggggggg'+choice);
                              });
                            },
                            selectedColor: Colors.amber,
                            shape: ContinuousRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(5.0)))),
                    Container( //width: 140,
                        child: ChoiceChip(
                          /* avatar: image.asset(
                                   "assets/right.png",
                                   matchTextDirection: false,
                                   width: 20.0),*/
                            label: Text('Vegetable',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                            //labelPadding:
                            // EdgeInsets.symmetric(horizontal: 0),
                            selected: choice == 'Vegetable',
                            onSelected: (bool selected) {
                              setState(() {
                                // getvegetable();
                                // print('gsdgsdffgfgfgggggggggggggg'+choice);
                                choice = selected ? 'Vegetable' : null;
                              });
                            },
                            selectedColor: Colors.amber,
                            shape: ContinuousRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(5.0))))
                  ]),
            ),

          ],
        ),
      ),
    );
  }

}