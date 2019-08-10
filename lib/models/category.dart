import 'package:flutter/material.dart';

class Category{

final String name;
final String icon;
final Color color;

  Category({
    @required this.name, 
    @required this.icon, 
    @required this.color

  });
}   
List<Category> categories = <Category>[
Category(
  color: Colors.orange, 
  icon: 'assets/images/football.png', 
  name: 'Sports',
 ),
 Category(
  color: Colors.cyan, 
  icon: 'assets/images/travel.png', 
  name: 'Travel',
 ),
 Category(
  color: Colors.pink, 
  icon: 'assets/images/radio.png', 
  name: 'Music',
 ),
 Category(
  color: Colors.blue, 
  icon: 'assets/images/puzzle.png', 
  name: 'Gaming',
 ),
 Category(
  color: Colors.green, 
  icon: 'assets/images/camera.png', 
  name: 'photos',
 ),
 Category(
  color: Colors.red, 
  icon: 'assets/images/groceries.png', 
  name: 'Food',
 )
];
