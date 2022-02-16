import 'package:flutter/material.dart';
import 'package:flutter_jigsaw_puzzle/flutter_jigsaw_puzzle.dart';

class PuzzleGame extends StatefulWidget {
  const PuzzleGame({Key? key}) : super(key: key);

  @override
  _PuzzleGameState createState() => _PuzzleGameState();
}

class _PuzzleGameState extends State<PuzzleGame> {
  @override
  final puzzleKey = GlobalKey<JigsawWidgetState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await puzzleKey.currentState!.generate();
                    },
                    child: const Text('Generate'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      puzzleKey.currentState!.reset();
                    },
                    child: const Text('Clear'),
                  ),
                ],
              ),
              JigsawPuzzle(
                gridSize: 5,
                image: const AssetImage('assets/puzzleImage1.jpeg'),
                onFinished: () {
                  // ignore: avoid_print
                  print('finished!');
                },
                // ignore: avoid_redundant_argument_values
                snapSensitivity: .5, // Between 0 and 1
                puzzleKey: puzzleKey,
                onBlockSuccess: () {
                  // ignore: avoid_print
                  print('block success!');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
