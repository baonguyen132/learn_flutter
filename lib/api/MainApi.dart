import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learn_flutter/api/Battery.dart';
import 'package:learn_flutter/api/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Battery> batteries = [] ;
  String selected = "32" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API Call"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: batteries.length,
        itemBuilder: (context, index) => ListTile(
          contentPadding: EdgeInsets.all(10),
          onTap: () {
            setState(() {
              selected = batteries[index].getId();
            });
          },
          leading: CircleAvatar(
            child: Text(
              batteries[index].getId(),
              style: TextStyle(

              ),
            ),
          ),
          title: Text(
            batteries[index].getNameBattery() ,
            style: TextStyle(
              color: selected == batteries[index].getId()  ? Colors.red : Colors.black87 ,
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingButton(handle: (page) {
        print(page) ;
        loadData() ;
      },)
    );
  }
  Future<void> loadData() async {
    const url = "http://localhost/DACS2/public/api/batteryapi" ;
    final uri = Uri.parse(url) ;
    final response = await http.get(uri) ;
    final body = response.body ;
    final json = jsonDecode(body);
    final result = json["data"] as List<dynamic> ;
    setState(() {
      result.map((e) {
        batteries.add(Battery(
            id: e["id"].toString(),
            name_battery: e["name_battery"],
            size: e["size"],
            shape: e["shape"],
            image: e["image"],
            point: e["point"]
        ));
      }).toList();
      
    });
  }
}


