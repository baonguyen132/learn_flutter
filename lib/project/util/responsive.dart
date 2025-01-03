import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  final Widget mobile ;
  final Widget tablet ;
  final Widget desktop ;
  const Responsive(
      {
        super.key,
        required this.desktop,
        required this.mobile,
        required this.tablet
      }
      );

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < 500) {
        return widget.mobile ;
      }
      else if(constraints.maxWidth < 1100) {
        return widget.tablet ;
      }
      else {
        return widget.desktop ;
      }
    },);
  }
}
