import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score/score/bloc/score_bloc.dart';
import 'package:score/score/bloc/score_event.dart';
import 'package:score/score/bloc/score_state.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScoreBloc(),
      child: BlocBuilder<ScoreBloc, ScoreState>(
        builder: (context, state) {
          final scoreA = state.scoreA;
          final scoreB = state.scoreB;
          final bloc = context.read<ScoreBloc>();

          return Scaffold(
            appBar: AppBar(title: const Text('Score')),
            body: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  /// Score
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xff1871F5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            '$scoreA',
                            style: TextStyle(
                              fontSize: 57,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xff1871F5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            scoreB.toString(),
                            style: TextStyle(
                              fontSize: 57,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),

                  /// Increment
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          bloc.add(IncrementScoreAEvent());
                        },
                        child: Text('+ Team A'),
                      ),
                      SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () {
                          bloc.add(IncrementScoreBEvent());
                        },
                        child: Text('+ Team B'),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),

                  /// Reset
                  ElevatedButton(
                    onPressed: () {
                      bloc.add(ResetScoreEvent());
                    },
                    child: Text('Reset'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
