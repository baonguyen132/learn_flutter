import 'package:flutter/material.dart';
import 'package:learn_flutter/project/util/MyDrawer.dart';

class Tablet extends StatefulWidget {
  Tablet({super.key});
  int page = 1 ;
  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: Mydrawer(
        selection: widget.page,
        handle: (page) {
          print(page) ;
        },
      ),

    );
  }
}
