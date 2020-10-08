import 'package:flutter/material.dart';
import 'car_view.dart';

class CarList extends StatelessWidget {
  List<car> cars = [
    car("BMW", "Serie 3", "Images/bmw.jpg"),
    car("Chery", "Tiggo 7", "Images/chery.jpg"),
    car("Kia", "sportage", "Images/kia.jpg"),
    car("Peugeot", "208", "Images/208.jpg"),
    car("Peugeot", "208", "Images/208.jpg"),
    car("Peugeot", "208", "Images/208.jpg"),
    car("Peugeot", "208", "Images/208.jpg"),
    car("Peugeot", "208", "Images/208.jpg"),
    car("Peugeot", "208", "Images/208.jpg"),
    car("Peugeot", "208", "Images/208.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("voiture"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CarView(
              cars[index].carMake, cars[index].carModel, cars[index].imageUrl);
        },
        itemCount: cars.length,
      ),
      // body: ListView(
      //   children: [
      //     CarView("peugeot","208","Images/208.jpg"),
      //     CarView("peugeot","206","Images/bmw.jpg"),
      //     CarView("peugeot","208","Images/chery.jpg"),
      //     CarView("peugeot","208","Images/chery.jpg"),
      //     CarView("peugeot","208","Images/chery.jpg"),
      //     CarView("peugeot","208","Images/chery.jpg"),
      //     CarView("peugeot","208","Images/chery.jpg"),
      //     CarView("peugeot","208","Images/chery.jpg"),
      //   ],
      // ),
    );
  }
}

class car {
  String carMake;
  String carModel;
  String imageUrl;
  car(this.carMake, this.carModel, this.imageUrl);
}
