import 'package:flutter/material.dart';
import 'package:learn_flutter/project/screens/dashboard/dashboard_tablet.dart';
import 'package:learn_flutter/project/util/MyDrawer.dart';

import '../data/ConstraintData.dart';

class Tablet extends StatefulWidget {
  Tablet({super.key});
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
        selection: mainPage,
        handle: (page) {
          setState(() {
            Navigator.pop(context) ;
            mainPage = page ;
          });
        },
      ),
      body: DashboardTablet()
    );
  }
}
