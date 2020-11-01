import 'package:flutter/material.dart';
import 'car_view.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CarList extends StatefulWidget {
  @override
  _CarListState createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  List<car> cars = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    http.get("http://51.89.167.87:9090/car").then((http.Response response) {
      List<dynamic> listofCars = json.decode(response.body);
      for (int i = 0; i < listofCars.length; i++) {
        Map<String, dynamic> carlist = listofCars[i];
        cars.add(car(carlist["make"], carlist["model"],
            "http://51.89.167.87:9090/img/" + carlist["image"]));
      }
      setState(() {});
    });
  }

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
