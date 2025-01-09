import 'package:flutter/material.dart';

class DashboardDesktop extends StatefulWidget {
  const DashboardDesktop({super.key});

  @override
  State<DashboardDesktop> createState() => _DashboardDesktopState();
}

class _DashboardDesktopState extends State<DashboardDesktop> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
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
              ),
              Expanded(
                  child: Container(
                    height: 800,
                    color: Colors.blue,

                  )
              )
            ],
          ),
        ]
    );
  }
}
