import 'package:counter_with_cubit/cubit/counter_cubit.dart';
import 'package:counter_with_cubit/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        body: BlocConsumer<CounterCubit, CounterState>(
          listener: (context, state) {
            if (state is UpdatedCounter) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Update')));
            }
          },
          builder: (context, state) {
            if (state is LoadingCounter) {
              return Center(child: CircularProgressIndicator());
            }
            var cubit = context.read<CounterCubit>();
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(cubit.counter.toString(), style: TextStyle(fontSize: 50)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton.filled(
                        onPressed: () {
                          cubit.add();
                        },
                        icon: Icon(Icons.add),
                      ),
                      SizedBox(width: 20),
                      IconButton.filled(
                        onPressed: () {
                          cubit.remove();
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      cubit.reset();
                    },
                    child: Text('Reset', style: TextStyle(color: Colors.deepPurple, fontSize: 40)),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
