class CatalogModel {
  static final item= [
  items(
  id: 1,
  name: "iPhone 12 Pro",
  desc: "Apple iPhone 12th generation",
  price: 999,
  color: "#33505a",
  image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")];

}



class items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  items({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});

}

final products = [
  items(
      id: 001,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
];