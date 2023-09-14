import 'dart:convert';


// class CatalogModel {
//   static List<Item> products;
// }



class Catlog_model {
  List<Products>? products;

  Catlog_model({this.products});

  Catlog_model.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  String? name;
  String? desc;
  int? price;
  String? color;
  String? image;

  Products({this.id, this.name, this.desc, this.price, this.color, this.image});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    desc = json['desc'];
    price = json['price'];
    color = json['color'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['price'] = this.price;
    data['color'] = this.color;
    data['image'] = this.image;
    return data;
  }
}


class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});
}

