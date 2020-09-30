import "package:flutter/material.dart";

class CarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars list"),
      ),
      body: Container(
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: _drawListViewBuilder()),
    );
  }

  List<String> _myList() {
    return List.generate(100, (index) => "Chaîne de caractère numéro $index");
  }

  Widget _drawListViewBuilder() {
    List<String> list = _myList();
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          print(list[index]);
          return ListTile(
            title: Text(list[index]),
          );
        });
  }

  Widget _listView() {
    return ListView(
      children: [
        ListTile(
          title: Text("Title 1"),
          subtitle: Text("Description goes here"),
          leading: Icon(Icons.alarm),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print("First");
          },
        ),
        ListTile(
          title: Text("Title 2"),
          subtitle: Text("Description goes here"),
          leading: Icon(Icons.accessible),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print("First");
          },
        )
      ],
    );
  }
}
