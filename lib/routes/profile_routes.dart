import 'package:endsmeet/features/address_screen/ui/address_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class ProfileRoute{
  String addAddress = '/profile/add-address';

  FluroRouter router;
  ProfileRoute({required this.router}){
    router.define(addAddress, handler: addAddressHandler);
  }

  var  addAddressHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return AddressScreen();
  });
}