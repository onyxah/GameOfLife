import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gameoflife/app/screens/settings_dialog.dart';
import 'package:gameoflife/data/providers/game_provider.dart';

class GameControls extends ConsumerWidget {
  const GameControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameNotifier = ref.watch(gameProvider.notifier);
    final game = ref.watch(gameProvider);

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildControlButton(
            onPressed: () => gameNotifier.togglePlayPause(),
            label: game.isPlaying ? 'Pause' : 'Play',
          ),
          const SizedBox(width: 5),
          _buildControlButton(
            onPressed: () => gameNotifier.nextGeneration(),
            label: 'Next',
          ),
          const SizedBox(width: 5),
          _buildControlButton(
            onPressed: () => showSettingsDialog(context, ref),
            label: 'Settings',
          ),
          const SizedBox(width: 5),
          _buildControlButton(
            onPressed: () => gameNotifier.reset(),
            label: 'Reset',
          ),
          const SizedBox(width: 5),
          _buildControlButton(
            onPressed: () {
              gameNotifier.generateRandomPattern();
            },
            label: 'Random',
          ),
        ],
      ),
    );
  }

  Widget _buildControlButton({required VoidCallback onPressed, required String label}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }

}
