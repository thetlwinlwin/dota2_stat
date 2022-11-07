import 'package:dota2_stat_river/features/shared/widgets/app_bar.dart';
import 'package:dota2_stat_river/providers/recents_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

    final child = result.when(
      data: (recentMatches) => const Text(
        "Got it",
      ),
      loading: () => const CircularProgressIndicator.adaptive(),
      error: (message) => Text(message),
    );
    return Center(
      child: child,
    );
  }
}
