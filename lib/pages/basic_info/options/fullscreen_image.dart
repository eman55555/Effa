import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class FullScreenImage extends StatelessWidget {
   FullScreenImage({Key? key, required this.images}) : super(key: key);
  List<String> images ;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Swiper(
        scrollDirection:Axis.horizontal,
  itemBuilder:(BuildContext context, int i) =>
       Image.asset(
          images[i],
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        itemCount: images.length,
      ),
    );
  }
}
