import 'package:flutter/material.dart';
import 'package:learn_flutter/project/theme/theme.dart';
import 'package:learn_flutter/project/util/MyDrawer.dart';

class Desktop extends StatefulWidget {
  Desktop({super.key});
  int page = 1 ;
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
              child: Mydrawer(
                selection: widget.page,
                handle: (page) {
                  setState(() {
                    widget.page = page ;
                  });
                },
                
              )
            ),
            Expanded(
              flex: 5,
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {print(widget.page) ;}, 
                      child: Text("text"),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(widget.page == 1 ? Colors.red : Colors.black)
                      ),
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}

