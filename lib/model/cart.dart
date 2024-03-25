import 'package:flutter/material.dart';
import 'package:shoes_store/model/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShopList = [
    Shoe(
      name: 'Air jordan 1',
      price: '1.001,00',
      imagePath: 'lib/images/nike1.png',
      description: 'Cool shoe',
    ),
    Shoe(
      name: 'Air jordan 2',
      price: '1.002,00',
      imagePath: 'lib/images/nike2.png',
      description: 'Cool shoe',
    ),
    Shoe(
      name: 'Air jordan 3',
      price: '1.003,00',
      imagePath: 'lib/images/nike3.png',
      description: 'Cool shoe',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShopList;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
