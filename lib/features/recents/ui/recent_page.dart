import 'package:dota2_stat_river/providers/recents_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/widgets/app_bar.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

    return result.when(
      data: (recentMatches) => ListView.builder(
        itemBuilder: (context, index) {
          const String gameMode = 'unknown';
          return ListTile(
            title: Text(
              recentMatches[index].matchId.toString(),
            ),
            subtitle: const Text(gameMode),
          );
        },
        itemCount: recentMatches.length,
      ),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (message) => Center(child: Text(message)),
    );
  }
}
