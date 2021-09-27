import 'package:appbar/drawer.dart';

import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 120,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "AppBar",
            ),
          ),
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.account_circle,
                  size: 30,
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.search,
              ),
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert),
                color: Colors.white,
                elevation: 400,
                onSelected: (value) {},
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(Icons.supervisor_account),
                            ),
                            Text("Add account"),
                          ],
                        ),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(Icons.download),
                            ),
                            Text("Downloads"),
                          ],
                        ),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(Icons.history),
                            ),
                            Text("History"),
                          ],
                        ),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(Icons.social_distance),
                            ),
                            Text("Social"),
                          ],
                        ),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(Icons.payment),
                            ),
                            Text("Payments"),
                          ],
                        ),
                        value: 2,
                      ),
                    ])
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Text(
                  "Tab1",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  "Tab2",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )),
      drawer: MyDrower(),
      body: TabBarView(
        controller: _tabController,
        children: [
          First(),
          Second(),
        ],
      ),
    );
  }
}

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.teal,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Icon(
                Icons.wrong_location,
                color: Colors.white,
                size: 120,
              ),
            ),
            Text(
              "Custom Tabbar",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ],
        ));
  }
}

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Icon(
        Icons.ac_unit,
        size: 100,
        color: Colors.red,
      ),
    );
  }
}
