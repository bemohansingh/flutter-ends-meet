import 'package:endsmeet/resources/images.dart';

class Slide{
  String imgUrl;
  Slide({required this.imgUrl});
}

final slideList = [
  Slide(imgUrl: AppImage.firstItem),
  Slide(imgUrl: AppImage.secondItem),
  Slide(imgUrl: AppImage.thirdItem),
  Slide(imgUrl: AppImage.fourthItem),
];