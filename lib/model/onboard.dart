import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/model/onboard_model.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  List<Widget> items = [
   Content.onboard('asset/splash_1.png') ,
    Content.onboard('asset/splash_2.png') ,
    Content.onboard('asset/splash_3.png') ,
  ];


  @override
  Widget build(BuildContext context) => Column(
      children: <Widget>[
        CarouselSlider(
          items: items,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,

            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ),

      ]
  );
}