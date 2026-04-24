import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score/score/bloc/score_event.dart';
import 'package:score/score/bloc/score_state.dart';

class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  ScoreBloc() : super(ScoreState(scoreA: 0, scoreB: 0)) {
    on<IncrementScoreAEvent>(_onIncrementScoreA);
    on<IncrementScoreBEvent>(_onIncrementScoreB);
    on<ResetScoreEvent>(_onResetScore);
  }

  void _onIncrementScoreA(
    IncrementScoreAEvent event,
    Emitter<ScoreState> emit,
  ) {
    emit(state.copyWith(scoreA: state.scoreA + 1));
  }

  void _onIncrementScoreB(
    IncrementScoreBEvent event,
    Emitter<ScoreState> emit,
  ) {
    emit(state.copyWith(scoreB: state.scoreB + 1));
  }

  void _onResetScore(ResetScoreEvent event, Emitter<ScoreState> emit) {
    emit(state.copyWith(scoreA: 0, scoreB: 0));
  }
}
