import 'package:endsmeet/features/cart_screen/ui/cart_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class ProductDetailRoute{
  String cart = "/product-detail/cart";


  FluroRouter router;

  ProductDetailRoute({required this.router}){
    router.define(cart, handler: cartHandler);
  }

  var  cartHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return CartScreen();
  });



}