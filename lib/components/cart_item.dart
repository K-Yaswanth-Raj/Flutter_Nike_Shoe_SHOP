import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(WidgetRef ref, Shoe shoe) {
    setState(() {
      ref.read(cartProvider).removeItemToCart(shoe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => Container(
        margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.grey[100]),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(widget.shoe.imagePath),
            ),
          ),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
            onPressed: () => removeItemFromCart(ref, widget.shoe),
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
