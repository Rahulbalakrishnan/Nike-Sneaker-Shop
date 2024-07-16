
import 'package:flutter/cupertino.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoes in the shop
  List<Shoe> shoeShop = [
    Shoe(
        name: "Nike Mercurial",
        price: "1,400.00",
        imagePath: "lib/images/6.webp",
        description: "FG High-Top Football Boot : "
            "Colour Shown: Black/Deep Jungle/Black Style: FQ1454-002"),
    Shoe(
        name: "Sabrina Dedication",
        price: " 675.00",
        imagePath: "lib/images/5.webp",
        description: "Basketball Shoes: "
            "Colour Shown: Cargo Khaki/Olive Aura/Metallic GoldStyle: HF5518-302"),
    Shoe(
        name: "Nike Dunk",
        price: "600.00",
        imagePath: "lib/images/1.webp",
        description: "Men's Shoes : "
            "Colour Shown: White/White/Viotech Style: DV0833-107"),

    Shoe(
        name: "Nike Air Max",
        price: "875.00",
        imagePath: "lib/images/4.webp",
        description: "Shoes: Colour Shown: Light Orewood Brown/Light Iron Ore/Moon Particle/PhantomStyle: FJ3145-101 "),
    Shoe(
        name: "Nike Air Max",
        price: "1,000.00",
        imagePath: "lib/images/2.webp",
        description: "Men's Shoes: "
            "Colour Shown: Midnight Navy/Dusty Cactus/Persian Violet/Total OrangeStyle: FD4290-400 "),
    Shoe(
        name: "Air Jordan 1",
        price: "1000.00",
        imagePath: "lib/images/3.webp",
        description: "Men's Shoes: Colour Shown: White/Black Style: CT8529-112"),
    Shoe(
        name: "Air Jordan 1",
        price: "725.00",
        imagePath: "lib/images/7.webp",
        description: "Men's Shoes: "
            "Colour Shown: Black/Gym Red/White Style: DQ8426-061 View Product Details"),
  ];

  // List of shoes in the cart
  List<Shoe> userCart = [];

  // Get the list of shoes
  List<Shoe> getShoeList() {
    return shoeShop;

  }

  //Get the shoes in the cart
  List<Shoe> getUserCart() {
    return userCart;

  }

  // Adding a shoe to the cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove a shoe from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
