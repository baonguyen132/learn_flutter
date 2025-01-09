import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  FloatingButton({super.key, required this.handle});

  final Function (int page) handle ;

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  int page = 2 ;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        widget.handle(page) ;
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
    );
  }
}

