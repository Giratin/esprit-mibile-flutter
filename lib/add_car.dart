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
  int quantity;
  GlobalKey<FormState> myKey =new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add new car"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: myKey,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Image.asset("Images/carshadow.png")),
              TextFormField(

                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Make"),
                onSaved: (value) {
                  marque=value;
                },
                validator: (value) {
                  if(value.isEmpty){
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
                onSaved: (value) {
                  model=value;
                },
                validator: (value) {
                  if(value.isEmpty){
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
                onSaved: (value) {
                  quantity=int.parse(value);
                },
                validator: (value) {
                  if(value.isEmpty){
                    return "Required";
                  }
                  if(int.tryParse(value)==null){
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
                onSaved: (value) {
                  description=value;
                },
                validator: (value) {
                  if(value.isEmpty){
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
                      if(myKey.currentState.validate()){
                        myKey.currentState.save();
                      }
                      print("marque "+marque+ " model "+model+" quantity "+quantity.toString()+" description "+description);
                      showDialog(
                          context:context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("my car"),
                            content: Text("marque "+marque+ " model "+model+" quantity "+quantity.toString()+" description "+description),
                          );
                        },
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text("clear"),
                    onPressed: () {
                      myKey.currentState.reset();
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
