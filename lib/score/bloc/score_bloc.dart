import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score/score/bloc/score_event.dart';
import 'package:score/score/bloc/score_state.dart';

class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  ScoreBloc() : super(ScoreState()) {}
}
