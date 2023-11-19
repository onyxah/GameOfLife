import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:gameoflife/app/components/credits_dialog.dart';
import 'package:gameoflife/app/components/game_controller.dart';
import 'package:gameoflife/app/components/how_to_play_dialog.dart';
import 'package:gameoflife/data/providers/game_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameInfo = ref.watch(gameProvider.notifier).gameInfo;
    final game = ref.watch(gameProvider);

    void showHowToPlayDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const HowToPlayDialog();
        },
      );
    }

    Widget buildCell(int row, int col) {
      

      if (game.grid.length > row && game.grid[row].length > col) {
        return GestureDetector(
          onTap: () {
            ref.read(gameProvider.notifier).toggleCell(row, col);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: game.grid[row][col] ? Colors.green : Colors.white,
            ),
          ),
        );
      } else {
        return Container();
      }
    }

    void showCreditsDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const CreditsDialog(); // Replace with your CreditsDialog widget
        },
      );
    }


    return FlutterWebFrame(
      maximumSize: const Size(475.0, 812.0),
      enabled: kIsWeb,
      builder: (BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Conway\'s Game of Life'),
          ),
          body: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: MediaQuery.of(context).size.width / game.grid[0].length,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    final row = index ~/ game.grid[0].length;
                    final col = index % game.grid[0].length;
                    return Consumer(
                      builder: (context, watch, child) => buildCell(row, col),
                    );
                  },
                  itemCount: game.grid.length * game.grid[0].length,
                ),
              ),
              const SizedBox(height: 5),
              Text('Generation: ${gameInfo.generation}, Population: ${gameInfo.trueCellCount}'),
              const SizedBox(height: 5),
              const GameControls(),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  showHowToPlayDialog(context);
                },
                child: const Text('How to Play'),
              ),
               const SizedBox(height: 10),
               ElevatedButton(
                onPressed: () {
                  showCreditsDialog(context);
                },
                child: const Text('Credits'),
              ),
              const SizedBox(height:90),
            ],
          ),
        ),
      ),
    );
  }
}
