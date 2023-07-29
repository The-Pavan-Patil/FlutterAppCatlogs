import 'package:flutter/material.dart';

import '../widget/myDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("This is the First App"),
        ),
      ),

    drawer: myDrawer(),);
  }
}
