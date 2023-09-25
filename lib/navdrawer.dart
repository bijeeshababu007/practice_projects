import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: NavDrawer(),));
}
class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.orangeAccent,
                  Colors.pinkAccent],
              )
            ),
            child: ListView(
              children: const [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(),
                  accountName: Text("Sundar"),
                  accountEmail: Text("CED of Alphabet inc"),
                   currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://img.mensxp.com/media/content/2021/Jun/Interesting-Stories-About-Sundar-Pichai-From-His-IIT-Days1200_60c1e6fe62d94.jpeg"),
                  ),
            ),
                ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                ),
                ListTile(
                  leading: Icon(Icons.leak_add_sharp),
                  title: Text("Leads"),
                ),
                ListTile(
                  leading: Icon(Icons.person_add_alt_outlined),
                  title: Text("Clients"),
                ),
                ListTile(
                  leading: Icon(Icons.rocket_launch_outlined),
                  title: Text("Projects"),
                ),
                ListTile(
                  leading: Icon(Icons.subscriptions),
                  title: Text("Subscriptions"),
                ),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Payments"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Users"),
                ),
                ListTile(
                  leading: Icon(Icons.code_off_rounded),
                  title: Text("Library"),
                ),
    ],
          ),
    ),
      ),
    );
  }

}