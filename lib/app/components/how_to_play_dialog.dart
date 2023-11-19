import 'package:flutter/material.dart';

@immutable
class HowToPlayDialog extends StatelessWidget {
  const HowToPlayDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleDialog(
      title: Text('How to Play'),
      contentPadding: EdgeInsets.all(16.0),
      children: [
        Text(
          'Welcome to Conway\'s Game of Life!\n\n'
          'The Game of Life is a cellular automaton devised by mathematician John Conway. '
          'It\'s a zero-player game, meaning that its evolution is determined by its initial state, '
          'with no further input from humans.\n\n'
          'Rules:\n'
          '1. The game is played on a grid of cells.\n'
          '2. Each cell can be either alive (filled) or dead (empty).\n'
          '3. The game evolves in generations, with each generation following specific rules.\n\n'
          'How to Play:\n'
          '1. Toggle the cells to be alive or dead by tapping on them.\n'
          '2. Click the "Play" button to start the simulation.\n'
          '3. Click the "Pause" button to stop the simulation.\n'
          '4. Use the "Next" button to advance to the next generation manually.\n'
          '5. Adjust the grid size and other settings in the "Settings" menu.\n'
          '6. Click "Reset" to clear the grid and start a new game.\n'
          '7. Click "Random" to generate a random pattern on the grid.\n\n'
          'Enjoy exploring the fascinating patterns that emerge in this simple yet complex simulation!',
        ),
      ],
    );
  }
}
