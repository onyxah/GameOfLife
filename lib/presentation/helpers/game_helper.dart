class GameHelper {
  // Creates an empty grid with the specified number of rows and columns.
  static List<List<bool>> createEmptyGrid(int rows, int cols) {
    return List.generate(rows, (row) => List.generate(cols, (col) => false));
  }

  // Clones a given grid to create an independent copy.
  static List<List<bool>> cloneGrid(List<List<bool>> grid) {
    return List<List<bool>>.from(grid.map((row) => List<bool>.from(row)));
  }

  // Calculates the number of rows to use based on the dynamic limit.
  static int calculateRows(int currentRows, int dynamicLimit) {
    return currentRows < dynamicLimit ? currentRows : dynamicLimit;
  }

  // Calculates the number of columns to use based on the dynamic limit.
  static int calculateCols(List<List<bool>> grid, int dynamicLimit) {
    return grid.isNotEmpty
        ? (grid[0].length < dynamicLimit ? grid[0].length : dynamicLimit)
        : dynamicLimit;
  }

  // Places a selected pattern in the center of a new grid with specified dimensions.
  static List<List<bool>> placePatternInGrid(
    int rows,
    int cols,
    List<List<bool>> selectedPattern,
  ) {
    final int startRow = (rows - selectedPattern.length) ~/ 2;
    final int startCol = (cols - selectedPattern[0].length) ~/ 2;

    return List.generate(rows, (row) {
      return List.generate(cols, (col) {
        if (row >= startRow &&
            row < startRow + selectedPattern.length &&
            col >= startCol &&
            col < startCol + selectedPattern[0].length) {
          return selectedPattern[row - startRow][col - startCol];
        } else {
          return false;
        }
      });
    });
  }

  // Computes the next generation of the game grid based on the rules of the Game of Life.
  static List<List<bool>> computeNextGeneration(List<List<bool>> grid) {
    final int rows = grid.length;
    final int cols = grid[0].length;
    List<List<bool>> newGrid =
        List.generate(rows, (row) => List.generate(cols, (col) => false));

    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++) {
        final int liveNeighbors = countLiveNeighbors(grid, row, col);

        if (grid[row][col]) {
          newGrid[row][col] = liveNeighbors == 2 || liveNeighbors == 3;
        } else {
          newGrid[row][col] = liveNeighbors == 3;
        }
      }
    }

    return newGrid;
  }

  // Counts the number of live neighbors for a given cell in the grid.
  static int countLiveNeighbors(List<List<bool>> grid, int row, int col) {
    final int rows = grid.length;
    final int cols = grid[0].length;
    int liveNeighbors = 0;

    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        if (i == 0 && j == 0) {
          continue;
        }

        int neighborRow = row + i;
        int neighborCol = col + j;

        if (isValidIndex(neighborRow, neighborCol, rows, cols)) {
          if (grid[neighborRow][neighborCol]) {
            liveNeighbors++;
          }
        }
      }
    }

    return liveNeighbors;
  }

  // Counts the total number of true cells in the grid.
  static int countTrueCells(List<List<bool>> grid) {
    return grid.fold(0, (sum, row) => sum + row.where((cell) => cell).length);
  }

  // Checks if the given row and column indices are valid for the specified grid dimensions.
  static bool isValidIndex(int row, int col, int maxRows, int maxCols) {
    return row >= 0 && row < maxRows && col >= 0 && col < maxCols;
  }
}
