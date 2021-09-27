import 'package:flutter/material.dart';

class MyDrower extends StatefulWidget {
  const MyDrower({Key? key}) : super(key: key);

  @override
  _MyDrowerState createState() => _MyDrowerState();
}

class _MyDrowerState extends State<MyDrower> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("user"),
            accountEmail: Text("xyz@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text(
                "u",
                style: TextStyle(fontSize: 30),
              ),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text("u"),
                backgroundColor: Colors.white,
              )
            ],
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contacts"),
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text("Sent"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.miscellaneous_services),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.notification_add),
            title: Text("Notification"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
          ),
        ],
      ),
    );
  }
}
