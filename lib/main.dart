import 'package:flutter/material.dart';
import 'car_list.dart';

import 'add_car.dart';
import 'car_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Cars Agency",
        debugShowCheckedModeBanner: false,
        // home: BookCar("BMW", "Serie 3", "Images/bmw.jpg",
        //     "This is a desciption or a BMW serie 3", 20));

        //
        home: CarList());
    //home: CarList(),
    // home: Scaffold(
    //     appBar: AppBar(
    //       title: Text("Hello World"),
    //     ),
    //     body: Column(
    //       children: [
    //         CarView("BMW", "Serie 3", "Images/bmw.jpg"),
    //         CarView("Chery", "Tiggo 7", "Images/chery.jpg"),
    //         CarView("KIA", "Sportage", "Images/kia.jpg"),
    //         CarView("Peugeot", "208", "Images/208.jpg"),
    //       ],
    //     )));
  }
}
