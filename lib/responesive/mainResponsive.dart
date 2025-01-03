import 'package:flutter/material.dart';
import 'package:learn_flutter/responesive/responsive/desktopResponsive.dart';
import 'package:learn_flutter/responesive/responsive/mobileResponsive.dart';
import 'package:learn_flutter/responesive/responsive/responsiveLayout.dart';
import 'package:learn_flutter/responesive/responsive/tabletResponsive.dart';

class MainResponsive extends StatefulWidget {
  const MainResponsive({super.key});

  @override
  State<MainResponsive> createState() => _MainResponsiveState();
}

class _MainResponsiveState extends State<MainResponsive> {
  @override
  Widget build(BuildContext context) {
    return const Responsivelayout(
        desktopScaffold: DesktopResponsive(),
        tabletScaffold: TabletResponsive(),
        mobileScaffold: MobileResponsive()
    );
  }
}
