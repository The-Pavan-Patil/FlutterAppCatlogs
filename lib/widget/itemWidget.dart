import 'package:flutter/material.dart';

import '../models/catlog.dart';

class itemWidget extends StatelessWidget {
  final items item;
  //final Dummylist = List.generate(10, (index) => CatalogModel.item[0]);
  const itemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(
        onTap: (){ print("Button pressed");},
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",textScaleFactor: 1.2,style: TextStyle(color: Colors.blue),),

      ),
    );
  }
}
