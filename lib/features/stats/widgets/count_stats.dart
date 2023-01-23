import 'package:dota2_stat_river/features/shared/models/api_models/player_stats_api_model.dart';
import 'package:dota2_stat_river/features/stats/widgets/stat_content_container.dart';
import 'package:dota2_stat_river/features/stats/widgets/stats_body_container.dart';
import 'package:dota2_stat_river/providers/game_constants_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountStats extends StatelessWidget {
  final GameMode gameMode;
  final LobbyType lobbyType;
  const CountStats({
    Key? key,
    required this.gameMode,
    required this.lobbyType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: _GameModeStats(gameMode: gameMode),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: _LobbyTypeStats(lobbyType: lobbyType),
          ),
        ],
      ),
    );
  }
}

class _GameModeStats extends ConsumerWidget {
  final GameMode gameMode;
  const _GameModeStats({
    Key? key,
    required this.gameMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getGameConstants = ref.watch(gameConstantsProvider).valueOrNull;

    final children = gameMode.toJson().entries.map<Widget>((e) {
      final gameWinStatus = GameWinStatus.fromJson(e.value);
      final gameMode = getGameConstants?.getMode(
            modeNum: int.parse(e.key),
          ) ??
          'unknown';
      return StatContentContainer(
        category: gameMode,
        total: gameWinStatus.games.toString(),
        win: gameWinStatus.win.toString(),
      );
    }).toList();
    return StatBodyContainer(children: children);
  }
}

class _LobbyTypeStats extends ConsumerWidget {
  final LobbyType lobbyType;
  const _LobbyTypeStats({
    Key? key,
    required this.lobbyType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getGameConstants = ref.watch(gameConstantsProvider).valueOrNull;
    final children = lobbyType.toJson().entries.map<Widget>((e) {
      final gameWinStatus = GameWinStatus.fromJson(e.value);
      final lobbyType = getGameConstants?.getType(
            lobbyTypeNum: int.parse(e.key),
          ) ??
          'unknown';
      return StatContentContainer(
        category: lobbyType,
        total: gameWinStatus.games.toString(),
        win: gameWinStatus.win.toString(),
      );
    }).toList();
    return StatBodyContainer(children: children);
  }
}
