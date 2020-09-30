import 'package:flutter/material.dart';
import 'package:workshop_flutter/list_car.dart';

class CreateCarView extends StatefulWidget {
  @override
  _CreateCarViewState createState() => _CreateCarViewState();
}

class _CreateCarViewState extends State<CreateCarView> {
  String marque = "";
  String model = "";
  String description = "";
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new car"),
        actions: [
          RaisedButton.icon(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CarList()));
              },
              icon: Icon(Icons.list),
              label: Text(""))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset("assets/car-shadow.png"),
            TextField(
                onChanged: (value) {
                  setState(() {
                    marque = value;
                  });
                },
                decoration: InputDecoration(
                    labelText: "Marque", border: OutlineInputBorder())),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  model = value;
                });
              },
              decoration: InputDecoration(
                  labelText: "Model", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  quantity = int.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Quantité", border: OutlineInputBorder()),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: "Description", border: OutlineInputBorder()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton.icon(
                    onPressed: () {
                      print("$marque $model $quantity $description");

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Alert"),
                            content:
                                Text("$marque $model $quantity $description"),
                          );
                        },
                      );
                      //Text("$marque $model $quantity $description"))
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    color: Colors.blue,
                    label: Text("Add new",
                        style: TextStyle(color: Colors.white, fontSize: 18.0)))
              ],
            ),
            Text("$marque $model $quantity $description")
          ],
        ),
      ),
    );
  }
}
