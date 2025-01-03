import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/myBox.dart';
import '../util/myTile.dart';

class TabletResponsive extends StatefulWidget {
  const TabletResponsive({super.key});

  @override
  State<TabletResponsive> createState() => _TabletResponsiveState();
}

class _TabletResponsiveState extends State<TabletResponsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar ,
        backgroundColor: myDefaultBackground,
        drawer: myDrawer,
        body: ListView(
          children: [
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context,  index) => MyBox(),
                ),
              ),
            ),
            MyTile(),
            MyTile(),
            MyTile(),
            MyTile(),
            MyTile(),
            Container(
              color: Colors.red,
              height: 200,
            )
          ],
        ),
    );
  }
}
