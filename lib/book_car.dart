import "package:flutter/material.dart";

class BookCar extends StatelessWidget {
  final String marque;
  final String model;
  final String image;
  final String description;
  final int quantite;

  BookCar(this.marque, this.model, this.image, this.description, this.quantite);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book a car"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(this.image),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text("Model " + marque + " " + model),
          ),
          Text("Description :"),
          Text(description),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text("Quantité :" + quantite.toString()),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {},
              child: Text("Book this car"),
            ),
          )
        ],
      ),
    );
  }
}
