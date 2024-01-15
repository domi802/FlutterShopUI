import 'package:flutter/material.dart';
import 'package:shopfirst/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Arsenal Kit',
      price: '99',
      imagePath: 'lib/images/arsenal.png',
      description: 'First shirt of the best english club',
    ),
    Shoe(
      name: 'Adidas Predator',
      price: '59',
      imagePath: 'lib/images/korki.png',
      description:
          'New generation of the best football shoes everytime created',
    ),
    Shoe(
      name: 'Buty Adidas ',
      price: '79.99',
      imagePath: 'lib/images/but.png',
      description: 'Wonderfull shoes for every weather and every ocasions',
    ),
    Shoe(
      name: 'T-Shirt Adidas',
      price: '29.99',
      imagePath: 'lib/images/koszulka.png',
      description: 'Simple but breathtaking, minimalistic design',
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
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
