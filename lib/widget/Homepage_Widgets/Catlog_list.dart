import 'package:flutter/material.dart';
import 'package:untitled/Pages/Home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Models/catlog.dart';
import 'Catlog_Image.dart';
import 'package:untitled/utils/myThemes.dart';

class CatlogList extends StatelessWidget {
  const CatlogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(shrinkWrap : true,itemCount: CatlogModel.items.length,itemBuilder: (context, index){

      final catlog = CatlogModel.items[index];
      return InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => HomeDetailPage(Catlog: catlog))),
          child: Hero(tag: Key(catlog.id.toString()),child: CatlogItem(catlog: catlog)));
    });
  }
}




class CatlogItem extends StatelessWidget {
  final Item catlog;
  const CatlogItem({Key? key,required this.catlog}) :assert(catlog != null), super (key:key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            CatlogImage(image : catlog.image),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catlog.name.text.lg.color(myThemes.Darkbluish).bold.make(),
                catlog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(alignment: MainAxisAlignment.spaceBetween,buttonPadding: EdgeInsets.zero,

                  children: [
                    "\$${catlog.price}".text.bold.xl.make(),
                    ElevatedButton(onPressed: () =>  {},style: ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder()),backgroundColor: MaterialStateProperty.all(myThemes.Darkbluish)), child: "Buy".text.make())
                  ],
                ).pOnly(right: 8.0)
              ],


            ))

          ],
        )
    ).white.rounded.square(150).make().py16();
  }
}
