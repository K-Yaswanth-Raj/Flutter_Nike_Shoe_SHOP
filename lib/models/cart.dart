import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nike_shoe_shop/models/shoe.dart';

class CartNotifier extends StateNotifier<dynamic> {
  CartNotifier() : super(null);

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: 'lib/images/1.png',
      description: 'Latest Signature Shoe',
    ),
    Shoe(
      name: 'AIR',
      price: '536',
      imagePath: 'lib/images/2.png',
      description: 'Latest Signature Shoe',
    ),
    Shoe(
      name: 'JORDAN',
      price: '286',
      imagePath: 'lib/images/3.png',
      description: 'Latest Signature Shoe',
    ),
    Shoe(
      name: 'Walks',
      price: '900',
      imagePath: 'lib/images/4.png',
      description: 'Latest Signature Shoe',
    ),
  ];
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}

final cartProvider = Provider<CartNotifier>((ref) {
  return CartNotifier();
});
