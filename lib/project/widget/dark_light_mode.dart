import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/project/data/ConstraintData.dart';
import 'package:learn_flutter/project/theme/theme.dart';
import 'package:learn_flutter/project/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class DarkLightMode extends StatefulWidget {
  const DarkLightMode({super.key});

  @override
  State<DarkLightMode> createState() => _DarkLightModeState();
}

class _DarkLightModeState extends State<DarkLightMode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0 , horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0 , horizontal: 13),
                child: Icon(mainLightDarkMode? Icons.sunny : CupertinoIcons.moon),
              ),
              Text(
                mainLightDarkMode? "Light Mode" : "Dark Mode",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.maintext
                ),
              )
            ],
          ),

          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  mainLightDarkMode = !mainLightDarkMode ;
                  Provider.of<ThemeProvider>(context, listen: false).toggleTheme() ;
                });
              },
              child: Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color(0xFFF2F2F2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10 ,
                      spreadRadius: -5,
                      offset: Offset(-3, -3)
                    ),
                    BoxShadow(
                      color: Colors.grey.shade500, // Bóng ở hướng ngược lại
                      blurRadius: 10,
                      spreadRadius: -5,
                      offset: Offset(3, 3),
                    ),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: mainLightDarkMode? MainAxisAlignment.start : MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: EdgeInsets.symmetric(vertical: 2 , horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Colors.blue
                      ),
                    )
                  ],
                ),

              ),
            ),
          )
        ],
      ),
    ) ;
  }
}
