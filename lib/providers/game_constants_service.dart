import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final gameConstantsProvider = FutureProvider<GameConstants>((ref) async {
  final gameMode = await rootBundle.loadString('assets/game_mode.json');
  final lobbyType = await rootBundle.loadString('assets/lobby_type.json');
  final Map<String, String> modeResult = Map.castFrom(json.decode(gameMode));
  final Map<String, String> typeResult = Map.castFrom(json.decode(lobbyType));

  return GameConstants(
    gameMode: modeResult,
    lobbyType: typeResult,
  );
});

class GameConstants {
  final Map<String, String> _gameMode;
  final Map<String, String> _lobbyType;

  GameConstants({
    required Map<String, String> gameMode,
    required Map<String, String> lobbyType,
  })  : _gameMode = gameMode,
        _lobbyType = lobbyType;

  String getMode({
    required int modeNum,
  }) =>
      _gameMode[modeNum.toString()] ?? 'Unknown';

  String getType({
    required int lobbyTypeNum,
  }) =>
      _lobbyType[lobbyTypeNum.toString()] ?? 'Unknown';

  @override
  String toString() {
    return '${_gameMode.toString()} ${_lobbyType.toString()}';
  }
}
