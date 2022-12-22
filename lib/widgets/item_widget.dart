import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print("pressed");
      },
      leading: Image.network(item.image),
      title: Text(
        item.name,
      ),
      subtitle: Text(item.desc),
      trailing: Text(
        "\$${item.price.toString()}",
        style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );
  }
}
