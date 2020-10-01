import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Cars Agency",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello World"),
            ),
            body: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/bmw-serie3.jpg",
                          width: 120.0,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("BWM"), Text("Serie 3")],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                CustomCardView("Chery", "Tiggo 7", "assets/chery-tiggo7.jpg"),
                CustomCardView("KIA", "Sportage", "assets/kia-sportage.jpg"),
                CustomCardView("Peugeot", "208", "assets/peugeot-208.jpg"),
              ],
            )));
  }
}

class CustomCardView extends StatelessWidget {
  final String marque;
  final String model;
  final String image;

  CustomCardView(this.marque, this.model, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          children: [
            Image.asset(
              this.image,
              width: 120.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(this.marque), Text(this.model)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
