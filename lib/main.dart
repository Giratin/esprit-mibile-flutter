import 'package:flutter/material.dart';
import 'package:workshop_flutter/add_car.dart';
import 'package:workshop_flutter/add_car_form.dart';

import 'book_car.dart';
import 'car_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Cars Agency",
        /*home: BookCar("BMW", "Serie 3", "Images/bmw.jpg",
            "This is a desciption or a BMW serie 3", 20)*/
        home: AddCar2()
        /*home: Scaffold(
            appBar: AppBar(
              title: Text("Hello World"),
            ),
            body: Column(
              children: [
                CarView("BMW", "Serie 3", "Images/bmw.jpg"),
                CarView("Chery", "Tiggo 7", "Images/chery.jpg"),
                CarView("KIA", "Sportage", "Images/kia.jpg"),
                CarView("Peugeot", "208", "Images/208.jpg"),
              ],
            ))
            */
        );
  }
}
