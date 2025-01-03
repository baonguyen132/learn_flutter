import 'package:flutter/material.dart';
import 'package:learn_flutter/themes/components/button.dart';
import 'package:learn_flutter/themes/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import '../components/box.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.secondary,
          child: MyButton(
            color: Theme.of(context).colorScheme.primary,
            onTap: (){
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme() ;
            },
          ),
        ),
      ),
    );
  }
}
