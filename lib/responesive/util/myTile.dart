import 'package:flutter/material.dart';

class MyTile extends StatefulWidget {
  const MyTile({super.key});

  @override
  State<MyTile> createState() => _MyTileState();
}

class _MyTileState extends State<MyTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.green,
        height: 80,
      ),
    );
  }
}
