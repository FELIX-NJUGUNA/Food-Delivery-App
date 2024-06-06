// ignore_for_file: slash_for_doc_comments

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';



class Restaurant extends ChangeNotifier{
  // list of food menu
  final List<Food> _menu = [

    // burgers
    Food(
      name: "Classic Cheeseburger", 
      description: "A juicy meat burger with melted cheese, tomato, hint of onion and pickle", 
      imagePath: "lib/images/Burgers/b1.jpeg",
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon plus", price: 2.99),
        Addon(name: "Avocado", price: 1.99),
      ]
    ),
      Food(
      name: "Bacon", 
      description: "A juicy meat burger with extra bacon", 
      imagePath: "lib/images/Burgers/b2.jpeg",
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon plus", price: 2.99),
        Addon(name: "Avocado", price: 1.99),
      ]
    ),
      Food(
      name: "Tiki Burger", 
      description: "A sensation burger that leaves your tongue say Aloha! ", 
      imagePath: "lib/images/Burgers/b3.jpeg",
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon plus", price: 2.99),
        Addon(name: "Avocado", price: 1.99),
      ]
    ),

      Food(
      name: "The Black Burger", 
      description: "A juicy meat burger with black buns", 
      imagePath: "lib/images/Burgers/b4.jpeg",
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon plus", price: 2.99),
        Addon(name: "Avocado", price: 1.99),
      ]
    ),
      Food(
      name: "Big Mega Burger", 
      description: "Get the biggest burger with extra insides", 
      imagePath: "lib/images/Burgers/b5.jpeg",
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon plus", price: 2.99),
        Addon(name: "Avocado", price: 1.99),
      ]
    ),

  // salads
  Food(
      name: "Greek Salad", 
      description: "A traditional Greek Salad", 
      imagePath: "lib/images/Salads/s1.jpeg",
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Small", price: 0.99),
        Addon(name: "Medium", price: 1.99),
        Addon(name: "Large", price: 2.99),
      ]
    ),
  Food(
      name: "Spanish Salad", 
      description: "A traditional Spanish Salad", 
      imagePath: "lib/images/Salads/s2.jpeg",
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Small", price: 0.99),
        Addon(name: "Medium", price: 1.99),
        Addon(name: "Large", price: 2.99),
      ]
    ),

  Food(
      name: "Ethiopian Salad", 
      description: "A traditional Ethiopian Salad", 
      imagePath: "lib/images/Salads/s3.jpeg",
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Small", price: 0.99),
        Addon(name: "Medium", price: 1.99),
        Addon(name: "Large", price: 2.99),
      ]
    ),

  Food(
      name: "Mexican Salad", 
      description: "A traditional Mexican Salad", 
      imagePath: "lib/images/Salads/s4.jpeg",
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Small", price: 0.99),
        Addon(name: "Medium", price: 1.99),
        Addon(name: "Large", price: 2.99),
      ]
    ),

  Food(
      name: "Chinese Salad", 
      description: "A traditional Chinese Salad", 
      imagePath: "lib/images/Salads/s5.jpeg",
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Small", price: 0.99),
        Addon(name: "Medium", price: 1.99),
        Addon(name: "Large", price: 2.99),
      ]
    ),
  
  
  //sides
   Food(
      name: "Sticky salad", 
      description: "Sensational meat on a stick with side salad", 
      imagePath: "lib/images/Sides/sd1.jpeg",
      price: 2.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
     Food(
      name: "Teriyaki meat sauce", 
      description: "Meat with salad and teriyaki sauce", 
      imagePath: "lib/images/Sides/sd2.jpeg",
      price: 2.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
     Food(
      name: "Guacamole Plus", 
      description: "Get a side dish with guacamole sauce", 
      imagePath: "lib/images/Sides/sd3.jpeg",
      price: 2.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
     Food(
      name: "Veggie dish", 
      description: "Fine dish for veggies", 
      imagePath: "lib/images/Sides/sd4.jpeg",
      price: 2.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
     Food(
      name: "Roast Green dish", 
      description: "Get a dish with roasted potatoes and broccoli", 
      imagePath: "lib/images/Sides/sd5.jpeg",
      price: 2.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
  // desserts

   Food(
      name: "Icy top", 
      description: "Chocolate ice cream with cherry on top", 
      imagePath: "lib/images/Desserts/d1.jpeg",
      price: 2.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
       Food(
      name: "Cake meets ice", 
      description: "Chocolate ice cream with cake combination", 
      imagePath: "lib/images/Desserts/d2.jpeg",
      price: 2.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
       Food(
      name: "Rainbow valley", 
      description: "Chocolate ice cream with rainbow theme", 
      imagePath: "lib/images/Desserts/d3.jpeg",
      price: 2.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
       Food(
      name: "Three in one", 
      description: "Ice cream combination of three scoops in one cone", 
      imagePath: "lib/images/Desserts/d4.jpeg",
      price: 2.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
       Food(
      name: "Pancake top", 
      description: "Pancake top with chocolate syrup and raspberry top", 
      imagePath: "lib/images/Desserts/d5.jpeg",
      price: 2.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 3.99),
        Addon(name: "Large", price: 4.99),
      ]
    ),
  //drinks

    Food(
      name: "Blue mockito", 
      description: "Blue mockito with extra vodka", 
      imagePath: "lib/images/Drinks/r1.jpeg",
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Shot", price: 5.99),
        Addon(name: "Medium", price: 8.99),
        Addon(name: "Large", price: 12.99),
      ]
    ),
    Food(
      name: "Lemonade", 
      description: "Get a lemonade with the flavour of your choice", 
      imagePath: "lib/images/Drinks/r2.jpeg",
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 4.99),
        Addon(name: "Large", price: 6.99),
      ]
    ),
    Food(
      name: "Dark Knight rises", 
      description: "Dark purple mix of juice, red wine and a secret formula", 
      imagePath: "lib/images/Drinks/r3.jpeg",
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Small", price: 4.99),
        Addon(name: "Medium", price: 9.99),
        Addon(name: "Large", price: 15.99),
      ]
    ),
    Food(
      name: "Milkshake", 
      description: "Get a milkshake with the flavour of your choice", 
      imagePath: "lib/images/Drinks/r4.jpeg",
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Small", price: 2.99),
        Addon(name: "Medium", price: 4.99),
        Addon(name: "Large", price: 6.99),
      ]
    ),
    Food(
      name: "The Green Monster", 
      description: "Strong mixture of mockito and vodka", 
      imagePath: "lib/images/Drinks/r5.jpeg",
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Small", price: 7.99),
        Addon(name: "Medium", price: 13.99),
        Addon(name: "Large", price: 20.99),
      ]
    ),

    
  ];


  // user cart
  final List<CartItem> _cart = [];


  // delivery address the user can change
  String _deliveryAddress = "PO Box 1316 Naivasha";
  
  /**
   * 
   * G E T T E R S
   * 
   */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /**
   * 
   * O P E R A T I O N S
   * 
   */




  // add to cart
  void addToCart(Food food, List <Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
    

    // check if the food items are the same
    bool isSameFood = item.food == food;

    // check if the list of the selected addons are the same 

    bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);

    
    return isSameFood && isSameAddons;
    
    });

      // if item already exists, increase it's quantity
    if(cartItem != null){
        cartItem.quantity++;
    }
    //otherwise add the new cart item to cart
    else{
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
   
    notifyListeners();
    
  }

  // remove from cart

  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }

  }

  // get total price of cart

  double getTotalPrice(){
    double total = 0.0;

    for(CartItem cartItem in _cart){
      double itemTotal  = cartItem.food.price;

    for(Addon addon in cartItem.selectedAddons){
      itemTotal += addon.price;
    }

    total += itemTotal * cartItem.quantity;

    }

    return total;

  }

  // get total number of items in cart

  int getTotalItemCount(){
    int totalItemCount = 0;

    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }


    return totalItemCount;
  }


  // clear cart 

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /**
   * 
   * H E L P E R S
   * 
   */


  // generate a receipt
  String displayCartRecept(){
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt:");
    receipt.writeln();

  // format the date to include up to the seconds
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("-------------");

  for (final cartItem in _cart) {
    receipt
        .writeln(
                "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
    if(cartItem.selectedAddons.isNotEmpty){
      receipt
      .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }

  receipt.writeln("-------------");
  receipt.writeln();
  receipt.writeln("Total items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
  receipt.writeln();
  receipt.writeln("Delivering to: $deliveryAddress");

  return receipt.toString();


  }

  // format double value to money
  String _formatPrice(double price){
    return "\$${price.toStringAsFixed(2)}";
  }

  // format a list of addons into a string summary
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name}  (${_formatPrice(addon.price)}) ")
    .join(", ");
  }
}