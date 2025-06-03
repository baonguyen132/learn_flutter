import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/app.dart';
import 'package:learn_flutter/bloc/counter_bloc.dart';
import 'package:learn_flutter/bloc/counter_event.dart';
import 'package:learn_flutter/bloc/counter_state.dart';
import 'package:learn_flutter/bloc_visibility/visibility_bloc.dart';
import 'package:provider/provider.dart';

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
            BlocProvider(create: (context) => CounterBloc(),),
            BlocProvider(create: (context) => VisibilityBloc(),)
          ],
          child: App()
      ),
    );
  }
}
