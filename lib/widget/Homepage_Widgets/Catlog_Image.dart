

import 'package:untitled/utils/myThemes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatlogImage extends StatelessWidget {
  final String image;
  const CatlogImage({super.key, required String this.image});

  @override
  Widget build(BuildContext context) {
    return  Image.network(image).box.rounded.p8.color(myThemes.creamColor).make().p16().w40(context);
  }
}
