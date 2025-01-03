import 'package:flutter/material.dart';
import 'package:learn_flutter/responesive/constants.dart';

import '../util/myBox.dart';
import '../util/myTile.dart';

class DesktopResponsive extends StatefulWidget {
  const DesktopResponsive({super.key});

  @override
  State<DesktopResponsive> createState() => _DesktopResponsiveState();
}

class _DesktopResponsiveState extends State<DesktopResponsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 3,
              child: ListView(
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
                  MyTile()
                ],
              ),
          ),
          Expanded(
              child: Container(
                color: Colors.red,
              )
          )
        ],
      ),

    );
  }
}
