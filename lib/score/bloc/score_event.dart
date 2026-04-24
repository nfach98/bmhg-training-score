import 'package:equatable/equatable.dart';

class ScoreEvent extends Equatable {
  const ScoreEvent();

  @override
  List<Object?> get props => [];
}

class IncrementScoreAEvent extends ScoreEvent {
  const IncrementScoreAEvent();

  @override
  List<Object?> get props => [];
}

class IncrementScoreBEvent extends ScoreEvent {
  const IncrementScoreBEvent();

  @override
  List<Object?> get props => [];
}

class ResetScoreEvent extends ScoreEvent {
  const ResetScoreEvent();

  @override
  List<Object?> get props => [];
}
