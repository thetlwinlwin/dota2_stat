import 'package:dota2_stat_river/features/stats/widgets/count_stats.dart';
import 'package:dota2_stat_river/features/stats/widgets/win_rate_stats.dart';
import 'package:dota2_stat_river/providers/player_stats_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatsResults extends ConsumerWidget {
  const StatsResults({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(getPlayerStatsProvider);
    return results.when(
      data: (data) => Column(
        children: [
          Expanded(
            child: WinRate(isRadiant: data.isRadiant),
          ),
          Expanded(
            flex: 4,
            child: CountStats(
              gameMode: data.gameMode,
              lobbyType: data.lobbyType,
            ),
          ),
        ],
      ),
      error: (error, _) => Center(
        child: Text(
          error.toString(),
          maxLines: 3,
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
