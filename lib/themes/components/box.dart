import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {

  final Widget? child ;
  final Color? color ;

  const MyBox({super.key, this.child , this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color
      ),
      width: 200,
      height: 200,
      padding: EdgeInsets.all(50),
      child: child,
    );
  }
}
