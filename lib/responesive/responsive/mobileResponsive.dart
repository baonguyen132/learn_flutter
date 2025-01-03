import 'package:flutter/material.dart';
import 'package:learn_flutter/responesive/constants.dart';
import 'package:learn_flutter/responesive/util/myBox.dart';
import 'package:learn_flutter/responesive/util/myTile.dart';

class MobileResponsive extends StatefulWidget {
  const MobileResponsive({super.key});

  @override
  State<MobileResponsive> createState() => _MobileResponsiveState();
}

class _MobileResponsiveState extends State<MobileResponsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar ,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: ListView(
        // 4 box
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
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
    );
  }
}
