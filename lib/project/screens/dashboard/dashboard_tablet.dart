import 'package:flutter/material.dart';

class DashboardTablet extends StatefulWidget {
  const DashboardTablet({super.key});

  @override
  State<DashboardTablet> createState() => _DashboardTabletState();
}

class _DashboardTabletState extends State<DashboardTablet> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        color: Colors.green,
                      ),

                    ),
                  ),
                ),
              ],
            ),
          )
        ]
    );
  }
}
