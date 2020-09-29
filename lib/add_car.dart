import 'package:flutter/material.dart';

class CreateCarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new car"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset("assets/car-shadow.png"),
            TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Marque",
                  hintText: "hint",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Model",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Quantité",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: TextField(
                maxLines: 3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Description",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    color: Colors.blue,
                    label: Text("Add new",
                        style: TextStyle(color: Colors.white, fontSize: 18.0)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
