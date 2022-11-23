import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/app_state.dart';
import '../../providers/idstat_api_service.dart';
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
