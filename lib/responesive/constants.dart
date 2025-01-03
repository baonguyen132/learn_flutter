
import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300] ;
var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  iconTheme: IconThemeData(color: Colors.grey[300]),
) ;

var myDrawer = Drawer(
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10) , bottomRight: Radius.circular(10))),

  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          const DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.favorite ,
                  color: Colors.black,
                  size: 50,
                ),
              )
          ),
          ListTile(
            leading: Icon(Icons.home),
            onTap: () {

            },

            title: const Text(
              "DASHBOARD",
              style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 15
              ),

            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            onTap: () {

            },
            title: const Text(
              "MESSAGE",
              style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 15
              ),

            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),

            onTap: () {

            },

            title: const Text(
              "SETTING",
              style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 15
              ),

            ),
          ),
        ],
      ),
      Column(
        children: [
          ListTile(
            leading: Icon(Icons.logout),

            onTap: () {

            },
            title: const Text(
              "LOGOUT",
              style: TextStyle(
                letterSpacing: 5,
                fontSize: 15,
              ),

            ),
          ),
        ],
      )
    ],
  ),
);