import 'package:flutter/material.dart';
import 'package:learn_flutter/project/mainProject.dart';
import 'package:learn_flutter/project/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider() ,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainProject(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
