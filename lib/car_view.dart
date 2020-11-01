import 'package:flutter/material.dart';

class CarView extends StatelessWidget {
  String marque;
  String model;
  String image;

  CarView(this.marque, this.model, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.network(
            image,
            height: 100,
            width: 100,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(marque), Text(model)],
            ),
          )
        ],
      ),
    );
  }
}
