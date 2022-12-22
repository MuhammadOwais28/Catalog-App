import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog.dart';

class CartModel {
  //catalog field
 late CatalogModel _catalog;

  //collection of ids - store ids of each item
  final List<int> _itemIds = [];
  // get catalog
  CatalogModel get catalog => _catalog;
  set Catalog(CatalogModel newcatalog) {
    // assert(newcatalog != null);
    _catalog = newcatalog;
  }

  // get items in the cart
  List<dynamic> get items =>
      _itemIds.map((id) => _catalog.getById(id)).toList();
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
