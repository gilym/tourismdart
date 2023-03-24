import 'package:flutter/material.dart';
import 'tourism_place.dart';

class Tester extends StatelessWidget {
  final TourismPlace place;
  const Tester({Key? key, required this.place}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title: Text(place.name),
       centerTitle: true,
     ),
   );
  }
}




