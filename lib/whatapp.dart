import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: WhatsApp()));
  }
  class WhatsApp extends StatelessWidget{
    var name = ["abi",
      "biji",
      "devu",
      "ammu",
      "paru",
      "gouri"];
  @override

  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text("WhatsApp"),
      actions: [
        Icon(Icons.camera_alt),
        SizedBox(width: 20,),
        Icon(Icons.search ),
        SizedBox(width: 20,),
        PopupMenuButton(itemBuilder : (context){
          return[
            PopupMenuItem(child: Text('New Group')),
            PopupMenuItem(child: Text("New broadcast")),
            PopupMenuItem(child: Text("Linked device")),
            PopupMenuItem(child: Text("Starres message")),
            PopupMenuItem(child: Text("Payments")),
            PopupMenuItem(child: Text("Settings")),
          ];
        },
        ),
      ],
      bottom: const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            iconMargin: EdgeInsets.all(100),
            child: Icon(Icons.people_alt),),
          Tab(
            child: Text("Chats",style: TextStyle(color: Colors.white),),),
          Tab(
            child: Text("Status",style: TextStyle(color: Colors.white),),),
          Tab(
            child: Text("Calls",style: TextStyle(color: Colors.white),),),
        ],
        // labelColor: Colors.white,
      ),
    ),
    body: Padding(
      padding: EdgeInsets.all(8.0),
      child: ListView(
        children: List.generate(
            8,
                (index) => Card(
                child: ListTile(
                  title: Text(name[index]),
                  leading: CircleAvatar(
                  ),
                  trailing: const Wrap(
                      direction: Axis.vertical,
                      children: [Text("11.00"),
                        SizedBox(width: 10,),
                        CircleAvatar(
                          maxRadius: 8,
                          minRadius: 4,
                          backgroundColor: Colors.green,
                          child: Text('3'),
                        )
                      ]),
                )
            )),
      ),
    ),
  );
  }

  }