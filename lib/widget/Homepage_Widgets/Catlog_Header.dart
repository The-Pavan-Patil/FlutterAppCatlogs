
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:untitled/utils/myThemes.dart';

class CatlogHeader extends StatelessWidget {
  const CatlogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catlog App".text.xl5.bold.color(myThemes.Darkbluish).make(),
        "Trending Products".text.xl2.make(),

      ],
    );
  }
}