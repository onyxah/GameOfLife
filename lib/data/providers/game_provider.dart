import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gameoflife/data/models/game.dart';
import 'package:gameoflife/presentation/notifiers/game_notifier.dart';

final gameProvider = StateNotifierProvider<GameNotifier, Game>(
  (ref) {
    return GameNotifier();
  },
);
