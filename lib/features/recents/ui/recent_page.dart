import 'package:dota2_stat_river/features/app_drawer/app_drawer.dart';
import 'package:dota2_stat_river/providers/game_constants_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/recents_api_service.dart';
import '../../shared/widgets/app_bar.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const AppDrawer(),
      appBar: MyCustomAppBar(titleText: 'Recents'),
      body: const SafeArea(child: RecentBody()),
    );
  }
}

class RecentBody extends ConsumerWidget {
  const RecentBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(recentMatchesProvider);
    final constants = ref.watch(gameConstantsProvider).value;

    return result.when(
      data: (recentMatches) => ListView.builder(
        itemBuilder: (context, index) {
          final recent = recentMatches[index];
          final String lobbyType = constants?.getType(
                lobbyTypeNum: recent.lobbyType,
              ) ??
              'Unknown';
          final String gameMode = constants?.getMode(
                modeNum: recent.gameMode,
              ) ??
              'Unknown';

          return ListTile(
            title: Row(
              children: [
                Text(
                  recent.matchId.toString(),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  recent.getTime.toString(),
                ),
              ],
            ),
            subtitle: Text(lobbyType),
          );
        },
        itemCount: recentMatches.length,
      ),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (message, _) => Center(child: Text(message.toString())),
    );
  }
}
