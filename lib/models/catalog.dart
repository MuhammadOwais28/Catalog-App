class CatalogModel {
  static final catalogModel = CatalogModel._internal();
  CatalogModel._internal();
  factory CatalogModel() => catalogModel;
  static List<Item> items = [];

  // get item by id for cart
   Item getById(int id) =>
      items.firstWhere((element) => element.id == id );

  //get item by position

   Item getByPosition(int pos) => items[pos];
}

class Item {
  int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
