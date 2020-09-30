import "package:flutter/material.dart";

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: ListView(
        children: [
          Card(
            child: Row(
              children: [
                Image.asset(
                  "assets/bmw-serie3.jpg",
                  width: 100,
                ),
                Column(
                  children: [Text("BWM"), Text("Serie 3")],
                )
              ],
            ),
          ),
          ListTile(
            leading: Image.asset("assets/chery-tiggo7.jpg"),
            title: Text("Chery"),
            subtitle: Text("Tiggo 7"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              print("clicked me");
            },
          ),
        ],
      ),
    );
  }
}

class MyListBuilder extends StatelessWidget {
  List<String> myList = [
    "Chaine numéro 1",
    " Chaine numéro 2",
    " Chaine numéro 3",
    " Chaine numéro 4",
    " Chaine numéro 5",
    " Chaine numéro 6",
    " Chaine numéro 7",
    " Chaine numéro 8",
    " Chaine numéro 9",
    " Chaine numéro 10",
    " Chaine numéro 11",
    " Chaine numéro 12",
    " Chaine numéro 13",
    " Chaine numéro 14",
    " Chaine numéro 15",
    " Chaine numéro 16",
    " Chaine numéro 17",
    " Chaine numéro 18",
    " Chaine numéro 19",
    " Chaine numéro 20",
    " Chaine numéro 21",
    " Chaine numéro 22",
    " Chaine numéro 23",
    " Chaine numéro 24",
    " Chaine numéro 25",
    " Chaine numéro 26",
    " Chaine numéro 27",
    " Chaine numéro 28",
    " Chaine numéro 29",
    " Chaine numéro 30",
    " Chaine numéro 31",
    " Chaine numéro 32",
    " Chaine numéro 33",
    " Chaine numéro 34",
    " Chaine numéro 35",
    " Chaine numéro 36",
    " Chaine numéro 37",
    " Chaine numéro 38",
    " Chaine numéro 39",
    " Chaine numéro 40",
    " Chaine numéro 41",
    " Chaine numéro 42",
    " Chaine numéro 43",
    " Chaine numéro 44",
    " Chaine numéro 45",
    " Chaine numéro 46"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view builder"),
      ),
      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(myList[index]),
            );
          }),
    );
  }

  List<String> getList() {
    var list = List.generate(1000, (index) => "Chaine numéro $index");
    print(list);
    return list;
  }
}
