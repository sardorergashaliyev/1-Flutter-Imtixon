import 'package:flutter/material.dart';

class Model {
  final String titles;
  final String place;
  final Image photo;
  final int price;

  Model({
    required this.titles,
    required this.price,
    required this.photo,
    required this.place,
  });
}
