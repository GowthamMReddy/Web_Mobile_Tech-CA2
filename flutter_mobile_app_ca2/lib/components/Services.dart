import 'package:flutter/material.dart';

class Service {
  final String image, title;
  final String price;
  final int id;

  Service({
    required this.id,
    required this.image,
    required this.price,
    required this.title,
  });

  get services => null;
}



List<Service> services = [
  Service(
    id: 1,
    image: "assets/images/HairCut_Men.jpg",
    title: "Men's Haircut",
    price: "21",
  ),
  Service
  (
    id: 2,
    image: "assets/images/Beard_Grooming.jpg",
    title: "Beard Trim",
    price: "20",
  ),
  Service(
  id: 3,
  image: "assets/images/Men_Facial_Massaging.jpg",
  title: "Men's Facial Massage",
  price: "25",
            
  ),
  Service(
  id: 4,
  image: "assets/images/Men_HairColor.jpg",
  title: "Men's HairDye",
  price: "15",
  ),
  Service(
    id: 5,
    image: "assets/images/HairCut_Women.jpg",
    title: "Women's Haircut",
    price: "21",
  ),
  Service
  (
    id: 6,
  image: "assets/images/HairStraightening_coloring.jpg",
  title: "Women's Hairdye",
    price: "20",
  ),
  Service(
  id: 7,
  image: "assets/images/NailArt.jpg",
  title: "Women's Nail Art",
  price: "25",
            
  ),
  Service(
  id: 8,
  image: "assets/images/Facial_Massaging.jpg",
  title: "Women's Facial Massage",
  price: "15",
  ),
            
];