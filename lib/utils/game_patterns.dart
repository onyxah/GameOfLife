import 'dart:math';

import 'package:flutter/material.dart' show immutable;

@immutable
class GamePatterns {
  static const List<List<List<bool>>> patterns = [
    // pulsar pattern
    [
      [false, true, false, false, false, false, false, true, false, false, false, false, false, true, false],
      [true, false, false, false, false, false, true, false, true, false, false, false, false, false, true],
      [true, false, false, false, false, false, true, false, true, false, false, false, false, false, true],
      [false, true, false, false, false, false, false, true, false, false, false, false, false, true, false],
      [false, false, true, false, false, false, false, false, false, false, false, false, true, false, false],
      [false, false, true, false, false, false, false, false, false, false, false, false, true, false, false],
      [false, false, true, false, false, false, false, false, false, false, false, false, true, false, false],
      [false, true, false, false, false, false, false, true, false, false, false, false, false, true, false],
      [true, false, false, false, false, false, true, false, true, false, false, false, false, false, true],
      [true, false, false, false, false, false, true, false, true, false, false, false, false, false, true],
      [false, true, false, false, false, false, false, true, false, false, false, false, false, true, false],
      [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false],
      [false, true, false, false, false, false, false, true, false, false, false, false, false, true, false],
      [true, false, false, false, false, false, true, false, true, false, false, false, false, false, true],
      [true, false, false, false, false, false, true, false, true, false, false, false, false, false, true],
      [false, true, false, false, false, false, false, true, false, false, false, false, false, true, false],
    ],
    [
      [false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, ],
      [true, true, true, false, true, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true, false, true, true, true, ],
      [false, false, false, false, true, false, false, false, true, false, false, true, false, false, true, false, false, true, false, false, false, true, false, false, false, false, ],
      [false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, ],
      [false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, true, false, false, false, false, false, false, false, false, false, false, ],
      [false, false, false, false, false, false, false, true, false, false, false, true, false, false, true, false, false, false, true, false, false, false, false, false, false, false, ],
      [false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, ],
      [false, false, false, false, false, false, false, false, true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, ],
      [false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, ],
      [false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, ],
      [false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, ],
      [false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, ],
    ],
    [
      [false, false, false, false, true, true, false, false, false, false, false, false, true, true, false, false, false, false, ],
	    [false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, ],
	    [true, true, false, true, false, false, false, false, false, false, false, false, false, false, true, false, true, true, ],
	    [true, true, false, true, false, true, false, false, true, true, false, false, true, false, true, false, true, true, ],
	    [false, false, false, true, false, true, false, true, false, false, true, false, true, false, true, false, false, false, ],
	    [false, false, false, true, false, true, false, true, false, false, true, false, true, false, true, false, false, false, ],
	    [true, true, false, true, false, true, false, false, true, true, false, false, true, false, true, false, true, true, ],
	    [true, true, false, true, false, false, false, false, false, false, false, false, false, false, true, false, true, true, ],
	    [false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, ],
	    [false, false, false, true, false, true, false, false, false, false, false, false, true, false, true, false, false, false, ],
	    [false, false, false, false, true, true, false, false, false, false, false, false, true, true, false, false, false, false, ],
	    [false, false, false, true, false, true, false, false, false, false, false, false, true, false, true, false, false, false, ],
    ],
    [
      [true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, ],
	    [true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, ],
	    [true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, ],
	    [true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, ],
    ],
    
    [
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
      [false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false],
    ]
    // Add more patterns...
  ];

  static List<List<bool>> getRandomPattern() {
    final int randomIndex = Random().nextInt(patterns.length);
    return patterns[randomIndex];
  }
}
