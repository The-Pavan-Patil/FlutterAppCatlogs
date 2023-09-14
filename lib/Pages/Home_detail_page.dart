import 'package:flutter/material.dart';
import 'package:untitled/utils/myThemes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Models/catlog.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key,required this.Catlog});
  final Item Catlog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(color: Colors.white,
        child: ButtonBar(alignment: MainAxisAlignment.spaceBetween,buttonPadding: EdgeInsets.zero,

          children: [
            "\$${Catlog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(onPressed: () =>  {},style: ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder()),backgroundColor: MaterialStateProperty.all(myThemes.Darkbluish)), child: "Buy".text.make()).wh(100, 50)
          ],
        ).p16(),
      ),
      backgroundColor: myThemes.creamColor,
      body: SafeArea(

        bottom: false,
        child: Column(
          children: [

            Hero(tag: Key(Catlog.id.toString()),child: Image.network(Catlog.image)).h32(context),
            Expanded(child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    Catlog.name.text.xl4.color(myThemes.Darkbluish).bold.make(),
                    Catlog.desc.text.xl.textStyle(context.captionStyle).make(),

                    10.heightBox,
                    ButtonBar(alignment: MainAxisAlignment.spaceBetween,buttonPadding: EdgeInsets.zero),
                  ],
                ).p64(),


              ),
            ))
          ],
        ),
      ),
    );
  }
}
