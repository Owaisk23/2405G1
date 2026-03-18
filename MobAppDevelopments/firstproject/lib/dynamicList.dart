import 'package:firstproject/drawerSide.dart' as drawerSidebar;
import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({ Key? key }) : super(key: key);

  @override
  _DynamicListState createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  @override
  final Users = [
    {
      "id": 1,
      "name": "Munna Bhai",
    },
    {
      "id": 2,
      "name": "Hathi Bhai",
    },
    {
      "id": 3,
      "name": "Jetha Bhai",
    },
    {
      "id": 4,
      "name": "Altaf Bhai",
    },
    {
      "id": 5,
      "name": "Shakoor BHai",
    },
    {
      "id": 6,
      "name": "Moin Bhai",
    }
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List"),
      ),
      drawer: drawerSidebar.DrawerSide(),
       body: ListView.builder(
        itemCount: Users.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('${Users[index]['name']}'),
            subtitle: Text('This is our BHAI users!!'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}