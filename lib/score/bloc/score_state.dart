import 'package:equatable/equatable.dart';

class ScoreState extends Equatable {
  final int scoreA;
  final int scoreB;

  const ScoreState({required this.scoreA, required this.scoreB});

  ScoreState copyWith({int? scoreA, int? scoreB}) {
    return ScoreState(
      scoreA: scoreA ?? this.scoreA,
      scoreB: scoreB ?? this.scoreB,
    );
  }

  @override
  List<Object?> get props => [scoreA, scoreB];
}
