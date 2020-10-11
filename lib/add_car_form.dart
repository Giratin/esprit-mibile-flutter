import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCar2 extends StatefulWidget {
  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar2> {
  String model;
  String marque;
  String description;
  int quantite;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  GlobalKey<FormState> myFormKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add new car"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Image.asset("Images/carshadow.png")),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Make"),
                onSaved: (String value) {
                  marque = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Required";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Model", border: OutlineInputBorder()),
                onSaved: (String value) {
                  model = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Required";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Quantity", border: OutlineInputBorder()),
                onSaved: (String value) {
                  quantite = int.parse(value);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Required";
                  }
                  if (int.tryParse(value) == null) {
                    return "Must be a number";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: "Description", border: OutlineInputBorder()),
                onSaved: (String value) {
                  description = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Required";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Add"),
                    onPressed: () {
                      if (myFormKey.currentState.validate()) {
                        myFormKey.currentState.save();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Car Info"),
                              content: Text(
                                  " Marque $marque \nModel $model  \nQuantité $quantite  \nDescription $description "),
                            );
                          },
                        );
                      }
                    },
                  ),
                  RaisedButton(
                    child: Text("clear"),
                    onPressed: () {
                      myFormKey.currentState.reset();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
