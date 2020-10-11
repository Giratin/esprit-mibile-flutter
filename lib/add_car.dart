import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCar extends StatefulWidget {
  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  String model;
  String marque;
  String description;
  int quantite;

  bool isEmptyDes;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isEmptyDes = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add new car"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Image.asset("Images/carshadow.png")),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Make"),
              onChanged: (String value) {
                setState(() {
                  marque = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Model", border: OutlineInputBorder()),
              onChanged: (String value) {
                setState(() {
                  model = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Quantity", border: OutlineInputBorder()),
              onChanged: (String value) {
                setState(() {
                  quantite = int.parse(value);
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                  labelText: "Description", border: OutlineInputBorder()),
              onChanged: (String value) {
                setState(() {
                  description = value;
                });
              },
            ),
            isEmptyDes ? Text("Empty !") : null,
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("Add"),
                  onPressed: () {
                    if (description.isEmpty) {
                      setState(() {
                        isEmptyDes = true;
                      });
                    } else {
                      setState(() {
                        isEmptyDes = false;
                      });
                    }
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("My Dialog"),
                          content: Text(
                              " Model $model Marque $marque Description $description Quantité $quantite"),
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text("clear"),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
