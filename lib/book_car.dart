import "package:flutter/material.dart";

class BookCar extends StatefulWidget {
  final String marque;
  final String model;
  final String image;
  final String description;
  int quantite;

  BookCar(this.marque, this.model, this.image, this.description, this.quantite);

  @override
  _BookCarState createState() => _BookCarState();
}

class _BookCarState extends State<BookCar> {
  var disabled = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    disabled = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book a car"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(widget.image),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text("Model " + widget.marque + " " + widget.model),
          ),
          Text("Description :"),
          Text(widget.description),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text("Quantité :" + widget.quantite.toString()),
          ),
          Center(
              child: RaisedButton(
            onPressed: () {
              if (widget.quantite > 1) {
                setState(() {
                  widget.quantite--;
                });
              }
            },
            child: Text("Book this car"),
          ))
        ],
      ),
    );
  }
}
