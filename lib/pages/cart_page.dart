import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nike_shoe_shop/components/cart_item.dart';
import 'package:nike_shoe_shop/components/shoe_tile.dart';
import 'package:nike_shoe_shop/models/cart.dart';
import 'package:nike_shoe_shop/models/shoe.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            //Text(ref.watch(cartProvider).getUserCart().length.toString()),
            //Text(ref.watch(cartProvider).getUserCart()[0].name),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'My Cart',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ref.watch(cartProvider).getUserCart().length,
                itemBuilder: (BuildContext context, int index) {
                  Shoe shoe = ref.watch(cartProvider).getUserCart()[index];
                  return CartItem(shoe: shoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
