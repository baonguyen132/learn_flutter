import 'package:flutter/material.dart';

class MyBox extends StatefulWidget {
  const MyBox({super.key});

  @override
  State<MyBox> createState() => _MyBoxState();
}

class _MyBoxState extends State<MyBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
