import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/user_service.dart';

class LogoutBtn extends ConsumerWidget {
  const LogoutBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () =>
          ref.read(userDataStateNotifierProvider.notifier).logout(),
      icon: const Icon(Icons.logout),
      color: Theme.of(context).colorScheme.secondary,
    );
  }
}
