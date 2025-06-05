import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/bloc/counter_event.dart';
import 'package:learn_flutter/bloc_visibility/visibility_bloc.dart';
import 'package:learn_flutter/bloc_visibility/visibility_event.dart';
import 'package:learn_flutter/bloc_visibility/visibility_state.dart';

import 'bloc/counter_bloc.dart';
import 'bloc/counter_state.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CounterBloc, CounterState>(
              buildWhen: (previous, current) {
                return current.count >= 2 ;
              },
              builder: (context, state) {
                return Center(
                  child: Text(
                    "${state.count}",
                    style: const TextStyle(
                        fontSize: 30
                    ),
                  ),
                ) ;
              },
              listener: (context, state) {
                if(state.count == 3) {
                  print("ssss");
                }
              },

          ),
          const SizedBox(height: 50, width: 50,),
          BlocBuilder<VisibilityBloc, VisibilityState>(builder: (context, state) {
            return Center(
              child: Visibility(
                  visible: state.show,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  )
              ),
            );
          },)

        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            context.read<CounterBloc>().add(CounterIncrementEvent());
          },
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
            tooltip: "Increment",
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 30,),
          FloatingActionButton(onPressed: () {
            context.read<CounterBloc>().add(CounterDecrementEvent());
          },
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
            tooltip: "Decrement",
            child: const Icon(Icons.minimize),
          ),

          const SizedBox(height: 30,),
          FloatingActionButton(onPressed: () {
            context.read<VisibilityBloc>().add(VisibilityShowEvent());
          },
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
            tooltip: "Show",
            child: const Icon(Icons.visibility),
          ),
          const SizedBox(height: 30,),
          FloatingActionButton(onPressed: () {
            context.read<VisibilityBloc>().add(VisibilityHideEvent());
          },
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
            tooltip: "Hide",
            child: const Icon(Icons.visibility_off),
          ),
        ],
      ),
    );
  }
}
