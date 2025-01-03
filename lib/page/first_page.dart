import 'dart:math';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "1ST PAGE",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.white
          ),
        ) ,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.logout,color: Colors.white,)
          ),
        ],
      ),

      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Container(
          height: 60,
          width: 200,

          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: const [
                  Colors.deepPurple,
                  Colors.purple ,
                ],
              begin: Alignment.centerLeft,
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          child: TextButton.icon(
            onPressed: (){
              Navigator.pushNamed(context, "/second") ;
            },
            icon: const Icon(
                  Icons.ads_click ,
                  color: Colors.white
              ),
            label: const Text(
                "Second page",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
            style: ButtonStyle(
              // backgroundColor: WidgetStatePropertyAll(Colors.white),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            ),


          ),
        ),

      ),
    );
  }
}
