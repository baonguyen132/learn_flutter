import 'package:flutter/material.dart';

class Responsivelayout extends StatefulWidget {

  final Widget mobileScaffold ;
  final Widget tabletScaffold ;
  final Widget desktopScaffold ;

  const Responsivelayout({
    super.key ,
    required this.desktopScaffold ,
    required this.tabletScaffold ,
    required this.mobileScaffold
  });

  @override
  State<Responsivelayout> createState() => _ResponsivelayoutState();
}

class _ResponsivelayoutState extends State<Responsivelayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < 500) {
        return widget.mobileScaffold ;
      }
      else if(constraints.maxWidth < 1100) {
        return widget.tabletScaffold ;
      }
      else {
        return widget.desktopScaffold ;
      }
    },);
  }
}
