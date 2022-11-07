import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/setting_service.dart';

class HomeViewToggle extends ConsumerWidget {
  const HomeViewToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconColor = Theme.of(context).colorScheme.primary;
    final isGrid =
        ref.watch(settingDataProvider.select((value) => value.isGrid));

    return IconButton(
      onPressed: () {
        ref.read(settingDataProvider.notifier).toggleview();
      },
      icon: isGrid
          ? Icon(Icons.view_carousel_sharp, color: iconColor)
          : Icon(Icons.view_comfortable_sharp, color: iconColor),
    );
  }
}
