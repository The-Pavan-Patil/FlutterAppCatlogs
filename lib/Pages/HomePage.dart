import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/Models/catlog.dart';
import 'package:untitled/utils/myThemes.dart';
import 'package:untitled/widget/myDrawer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/Homepage_Widgets/Catlog_Header.dart';
import '../widget/Homepage_Widgets/Catlog_Image.dart';
import '../widget/Homepage_Widgets/Catlog_list.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {


  final int days = 30;
  final String name = "Codepur";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();

  }


  loadData() async {
    //await Future.delayed(Duration(seconds: 2));
    final catlogJson = await rootBundle.loadString("assets/Files/Catlog.json");
    final decodedData = jsonDecode(catlogJson) ;
    //print(decodedData);
    List productData = decodedData["products"];
    CatlogModel.items = List.from(productData).map<Item>((item) => Item.fromJson(item)).toList();
    setState(() {
    });
    //didn't understooddddddd

  }
  @override
  Widget build(BuildContext context) {

    //  List items = [
    //   Item(
    //       id: 1,
    //       name: "iPhone 12 Pro",
    //       desc: "Apple iPhone 12th generation",
    //       price: 999,
    //       color: "#33505a",
    //       image:
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
    // ];
    // List items = [] its is a list
     // inwhichh Item is constructor which create items
     //here iphone 12 pro is one item at index 0






    //final dummyList = List.generate(20, (int index) => items[0]);
    return Scaffold(
      backgroundColor: myThemes.creamColor,
      body: SafeArea(
         child: Container(
             padding: Vx.m32,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                [CatlogHeader(),
                  if (CatlogModel.items != null && CatlogModel.items.isNotEmpty)
                    CatlogList().expand()
                  else
                    Center(child : CircularProgressIndicator())
                ],


            ).py16(),
        ),
      )
    );
  }
}


