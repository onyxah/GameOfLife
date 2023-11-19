import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gameoflife/constants/constants.dart';
import 'package:gameoflife/data/models/game.dart';
import 'package:gameoflife/data/models/game_info.dart';
import 'package:gameoflife/presentation/helpers/game_helper.dart';
import '../../utils/game_patterns.dart';


class GameNotifier extends StateNotifier<Game> {
  
  final GameInfo _gameInfo = GameInfo(0, 0);

  GameNotifier() : super(Game(GameHelper.createEmptyGrid(20, 20), false));

  // Getter for accessing the game informations generation and population
  GameInfo get gameInfo => _gameInfo;

  // Method to toggle the state of a cell in the grid
  void toggleCell(int row, int col) {
    if (GameHelper.isValidIndex(row, col, state.grid.length, state.grid[0].length)) {
      final newGrid = GameHelper.cloneGrid(state.grid);
      newGrid[row][col] = !newGrid[row][col];
      state = Game(newGrid, state.isPlaying);
      _updateGameInfo();
    }
  }

  // Method to generate a random pattern in the grid
  void generateRandomPattern() {
    const int dynamicLimit = Constants.dynamicLimit;
    final int rows = GameHelper.calculateRows(state.grid.length, dynamicLimit);
    final int cols = GameHelper.calculateCols(state.grid, dynamicLimit);
    final List<List<bool>> selectedPattern = GamePatterns.getRandomPattern();
    final List<List<bool>> newGrid = GameHelper.placePatternInGrid(
      rows,
      cols,
      selectedPattern,
    );
    state = Game(newGrid, state.isPlaying);
    _updateGameInfo();
  }

  // Method to toggle play/pause state
  void togglePlayPause() {
    state = Game(state.grid, !state.isPlaying);
    _runSimulation();
  }

  // Method to compute and set the next generation
  void nextGeneration() {
    if (state.isPlaying) {
      final newGrid = GameHelper.computeNextGeneration(state.grid);
      state = Game(newGrid, state.isPlaying);
      _updateGameInfo();
    }
  }

  // Method to reset the game state
  void reset() {
    state = Game(
      GameHelper.createEmptyGrid(state.grid.length, state.grid[0].length),
      false,
    );
    _updateGameInfo();
  }

  // Method to update the grid size
  void updateGridSize(int rows, int cols) {
    state = Game(GameHelper.createEmptyGrid(rows, cols), state.isPlaying);
    _updateGameInfo();
  }

  // Method to update game information based on the current state
  void _updateGameInfo() {
    final trueCellCount = GameHelper.countTrueCells(state.grid);
    // Increment generation only if playing, otherwise reset to 0
    _gameInfo.generation = state.isPlaying ? _gameInfo.generation + 1 : 0;
    _gameInfo.trueCellCount = trueCellCount;
  }

  // Method to run the simulation asynchronously
  void _runSimulation() async {
    while (state.isPlaying) {
      await Future.delayed(const Duration(milliseconds: 500));
      nextGeneration();
    }
  }
}
