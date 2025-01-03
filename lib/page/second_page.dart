import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Colors.blue[200],
      appBar: AppBar(
        title: const Text(
          "2ST PAGE",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.white
          ),
        ) ,
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.logout,color: Colors.white,)
          ),
        ],
      ),
    );
  }
}
