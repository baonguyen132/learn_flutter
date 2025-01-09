import 'package:flutter/material.dart';
import 'package:learn_flutter/project/screens/dashboard/dashBoard_mobile.dart';

import '../data/ConstraintData.dart';
import '../util/MyDrawer.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        drawer: Mydrawer(
          selection: mainPage,
          handle: (page) {
            setState(() {
              Navigator.pop(context) ;
              mainPage = page ;
            });
          },
        ),
        body: DashboardMobile()
    );
  }
}
