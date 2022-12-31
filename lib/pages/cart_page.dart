import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';

import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.accentColor).make(),
      ),
      body: Column(
        children: [
          CartList().p32().expand(),
          const Divider(),
          const _CartTotal()
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    final CartModel cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
              mutations: const {RemoveMutation},
              builder: (context, _,__) {
                return "\$${cart.totalPrice}"
                    .text
                    .xl4
                    .color(context.theme.accentColor)
                    .bold
                    .make();
              }),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Buying not Supported yet".text.make()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor)),
                  child: "Proceed".text.make())
              .w32(context)
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Seems like cart is empty. :')"
            .text
            .caption(context)
            .make()
            .centered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.done),
                trailing: IconButton(
                    onPressed: (() {
                      RemoveMutation(_cart.items[index]);
                      // setState(() {});
                    }),
                    icon: const Icon(Icons.remove_circle_outline)),
                title: Text(_cart.items[index].name),
              );
            });
  }
}

//  Text(_cart.items[index].name),