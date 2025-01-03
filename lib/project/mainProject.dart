import 'package:flutter/material.dart';
import 'package:learn_flutter/project/screens/desktop.dart';
import 'package:learn_flutter/project/screens/mobile.dart';
import 'package:learn_flutter/project/screens/tablet.dart';
import 'package:learn_flutter/project/util/responsive.dart';

class MainProject extends StatefulWidget {
  const MainProject({super.key});

  @override
  State<MainProject> createState() => _MainProjectState();
}

class _MainProjectState extends State<MainProject> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        desktop: Desktop(),
        mobile: Mobile(),
        tablet: Tablet()
    );
  }
}
