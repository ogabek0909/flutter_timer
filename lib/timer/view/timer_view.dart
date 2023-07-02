import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer/timer/bloc/timer_bloc.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Background(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 100),
                child: TimerText(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TimerText extends StatelessWidget {
  const TimerText({super.key});

  @override
  Widget build(BuildContext context) {
    // final minutesText = context.select((TimerBloc value) => value.state.)
    final minutesText = (60 / 60 % 60).floor().toString().padLeft(2, '0');
    final secondsText = (60 % 60).toString().padLeft(2, '0');
    return Text(
      "$minutesText:$secondsText",
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade500,
            ],
          ),
        ),
      ),
    );
  }
}
