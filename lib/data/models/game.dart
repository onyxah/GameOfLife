import 'package:flutter/material.dart' show immutable;

@immutable
class Game {
  final List<List<bool>> grid;
  final bool isPlaying;

  const Game(this.grid, this.isPlaying);
}