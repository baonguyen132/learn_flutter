import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {

  final String text ;
  VoidCallback onPressed ;

  Mybutton({super.key , required this.text , required this.onPressed});

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(
          fontWeight: FontWeight.bold,

        ),
      ),
      color: Colors.white,

    );
  }
}
