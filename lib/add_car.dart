import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCar extends StatelessWidget {
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
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Model", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Quantity", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                  labelText: "Description", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("Add"),
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
