import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({required this.id,required this.title,required this.image,required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Dart",
    image: "assets/images/dart.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Fire Base",
    image: "assets/images/fire.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Node.js",
    image: "assets/images/node.png",
    color: Color(0xFFFFF3DD),
  ),
 
];
