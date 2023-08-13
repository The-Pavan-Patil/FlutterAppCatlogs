import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/Models/catlog.dart';
import 'package:untitled/widget/myDrawer.dart';

import '../widget/ItemWidget.dart';

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
    var catlogJson = await rootBundle.loadString("assets/Files/Catlog.json");
    var decodedData = jsonDecode(catlogJson);
    print(decodedData);
  }
  @override
  Widget build(BuildContext context) {

     List items = [
      Item(
          id: 1,
          name: "iPhone 12 Pro",
          desc: "Apple iPhone 12th generation",
          price: 999,
          color: "#33505a",
          image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
    ];
    // List items = [] its is a list
     // inwhichh Item is constructor which create items
     //here iphone 12 pro is one item at index 0






    final dummyList = List.generate(20, (int index) => items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 20,//dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
            

            // return ItemWidget(
            //   item: //dummyList[index],

          },
        ),
      ),
      drawer: myDrawer(),
    );
  }
}