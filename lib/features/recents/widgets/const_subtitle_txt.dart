import 'package:dota2_stat_river/providers/game_constants_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContantSubTitleTxt extends ConsumerWidget {
  final String startingTime;
  final int lobbyType;
  final int gameMode;
  const ContantSubTitleTxt({
    super.key,
    required this.startingTime,
    required this.lobbyType,
    required this.gameMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final smallTxtStyle = Theme.of(context).textTheme.bodySmall;
    final constants = ref.watch(gameConstantsProvider).valueOrNull;
    final getLobbyType =
        constants?.getType(lobbyTypeNum: lobbyType) ?? 'Unknown';
    final getGameMode = constants?.getMode(modeNum: gameMode) ?? 'Unknown';
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(getLobbyType),
            ),
            Expanded(
              flex: 3,
              child: Text(getGameMode),
            ),
          ],
        ),
        Text(
          startingTime,
          style: smallTxtStyle,
        ),
      ],
    );
  }
}
