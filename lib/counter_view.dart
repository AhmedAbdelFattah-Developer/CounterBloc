import 'package:counter_bloc/cubit.dart';
import 'package:counter_bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, state) {},
        builder: (context, state) {
          CounterCubit cubit = CounterCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("CounterBloc"),
            ),
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              cubit.decrement();
                            },
                            child: const Icon(Icons.remove),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                "${cubit.counter}",
                                style: const TextStyle(fontSize: 50),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              cubit.increment();
                            },
                            child: const Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
