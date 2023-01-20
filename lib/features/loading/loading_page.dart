import 'package:dota2_stat_river/features/stats/provider/patch_provider.dart';
import 'package:dota2_stat_river/providers/game_constants_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/app_state.dart';
import '../../providers/user_service.dart';

class LoadingPage extends ConsumerStatefulWidget {
  const LoadingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoadingPageState();
}

class _LoadingPageState extends ConsumerState<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      final data = ref.read(userDataStateNotifierProvider);
      ref.read(appstateNotifierProvider.notifier).loadData(data: data);
      ref.read(gameConstantsProvider);
      ref.read(getLatestPatchIdProvider);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset('loading.gif', fit: BoxFit.contain),
        ),
      ),
    );
  }
}
