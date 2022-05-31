import 'package:endsmeet/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class ImageProduct extends StatelessWidget {
  String image;
  ImageProduct({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(child: CachedNetworkImage(imageUrl: image,fit: BoxFit.cover,));
  }
}
