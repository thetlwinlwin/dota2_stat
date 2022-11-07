import 'package:dota2_stat_river/providers/herostat_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/app_state.dart';
import '../../providers/idstat_api_service.dart';
import '../../providers/recents_api_service.dart';
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
      final data = ref.read(userDataProvider);
      ref.read(appstateNotifierProvider.notifier).loadData(data: data);
      ref.read(heroStatapiStateProvider);
      ref.read(idStatApiStateProvider);
      ref.read(recentMatchesProvider);
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
