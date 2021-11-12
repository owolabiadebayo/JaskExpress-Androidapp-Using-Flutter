import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/splash_1.png',
    title: 'A Cool Way to Get your needed Items',
    description:
        'JaskExpress Provide best shopping Experience you can ever imagine',
  ),
  Slide(
    imageUrl: 'assets/images/splash_2.png',
    title: 'Fast Delivery Service',
    description:
        'We deliver at your door step and provide the fastest delivery service in town',
  ),
  Slide(
    imageUrl: 'assets/images/splash_3.png',
    title: 'Quality Service',
    description: 'All Our Product are of standards and original',
  ),
];
