import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_event_statment/bloc/counter_bloc.dart';
import 'package:flutter_block_event_statment/bloc/counter_event.dart';
import 'package:flutter_block_event_statment/bloc/counter_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        if (state is CounterInit) {
          return _view(context, 0);
        }
        if (state is CounterUpdate) {
          return _view(context, state.counter);
        }
        return Container();
      }),
    );
  }

  Widget _view(BuildContext context, int value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value.toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  context.read<CounterBloc>().add(CounterIncrease());
                }),
            FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrease());
                }),
          ],
        )
      ],
    );
  }
}
