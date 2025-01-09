import 'package:flutter/material.dart';
import 'package:learn_flutter/project/screens/dashboard/dashboard_desktop.dart';
import 'package:learn_flutter/project/util/MyDrawer.dart';

import '../data/ConstraintData.dart';

class Desktop extends StatefulWidget {
  Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Mydrawer(
                selection: mainPage,
                handle: (page) {
                  setState(() {
                    mainPage = page ;
                  });
                },
                
              )
            ),
            Expanded(
              flex: 8,
                child: DashboardDesktop()
            )
          ],
        )
    );
  }
}

