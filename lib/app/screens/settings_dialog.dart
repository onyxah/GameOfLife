import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gameoflife/constants/strings.dart';
import 'package:gameoflife/data/providers/game_provider.dart';

void showSettingsDialog(BuildContext context, WidgetRef ref) {
  showDialog(
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      int rows = ref.watch(gameProvider).grid.length;
      int cols = ref.watch(gameProvider).grid[0].length;

      return AlertDialog(
        title: const Text(Strings.gameSetting),
        content: Column(
          mainAxisSize: MainAxisSize.min, // Adjusted to minimize vertical space
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: Strings.rows,
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                rows = int.tryParse(value) ?? rows;
              },
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: Strings.columns,
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                cols = int.tryParse(value) ?? cols;
              },
            ),
          ],
        ),
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 8.0, vertical: 8.0), // Adjust as needed
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(Strings.cancel),
          ),
          TextButton(
            onPressed: () {
              ref.read(gameProvider.notifier).updateGridSize(rows, cols);
              Navigator.of(context).pop();
            },
            child: const Text(Strings.apply),
          ),
        ],
      );
    },
  );
}
