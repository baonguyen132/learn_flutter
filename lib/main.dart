import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/app.dart';
import 'package:learn_flutter/cubit/counter/counter_cubit.dart';
import 'package:learn_flutter/cubit/visibility/visibility_cubit.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
          providers: [
            BlocProvider(
              lazy: true,
              create: (context) => CounterCubit(),
            ),
            BlocProvider(
              lazy: true,
              create: (context) => VisibilityCubit(),
            )
          ],
          child: App()
      ),
    );
  }
}
