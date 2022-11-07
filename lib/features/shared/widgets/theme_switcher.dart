import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/setting_service.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final val = ref.watch(settingDataProvider.select((value) => value.isDark));

    return IconButton(
      onPressed: () {
        ref.read(settingDataProvider.notifier).toggleMode();
      },
      icon: val
          ? const Icon(Icons.brightness_2)
          : const Icon(Icons.dark_mode_sharp),
    );
  }
}
