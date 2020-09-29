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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Model " + marque + " " + model),
          ),
          Text("Description :"),
          Text(description),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Quantité :" + quantite.toString()),
          ),
          Center(
            child: RaisedButton(
              onPressed: () => null,
              child: Text("Book this car"),
            ),
          )
        ],
      ),
    );
  }
}
