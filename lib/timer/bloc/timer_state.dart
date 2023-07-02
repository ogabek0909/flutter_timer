part of 'timer_bloc.dart';

class TimerState extends Equatable {
  final int duration;
  const TimerState({required this.duration});

  List<Object?> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial({required super.duration});
}
