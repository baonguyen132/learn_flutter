import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter/page/fragment/home.dart';
import 'package:learn_flutter/page/fragment/person.dart';
import 'package:learn_flutter/page/fragment/setting.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  int _selectedIndex = 0 ;

  final List _pages = [
    Home(),
    Person(),
    Setting()
  ] ;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _navigationBottomBar(int index) {
    setState(() {
      widget._selectedIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HOME",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.black
          ),
        ) ,
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        width: max(MediaQuery.of(context).size.width * 0.7, 300),
        child: Column(
          children: [
            DrawerHeader(child: Text("text")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("First"),
              onTap: (){
                Navigator.pushNamed(context, "/first") ;
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Second"),
              onTap: (){
                Navigator.pushNamed(context, "/second") ;
              },
            )
          ],
        ),
      ),
      body: widget._pages[widget._selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget._selectedIndex,
          onTap: _navigationBottomBar,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting"
            ),
          ]
      ),
    );
  }
}
