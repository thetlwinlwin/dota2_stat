import 'package:flutter/cupertino.dart';
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
      icon: _PlatformThemeMode(Theme.of(context).platform).build(
        context: context,
        isDark: val,
      ),
    );
  }
}

abstract class _PlatformThemeMode {
  factory _PlatformThemeMode(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidModeIcon();
      case TargetPlatform.iOS:
        return IosModeIcon();
      default:
        return IosModeIcon();
    }
  }

  Icon build({
    required BuildContext context,
    required bool isDark,
  });
}

class AndroidModeIcon implements _PlatformThemeMode {
  @override
  Icon build({
    required BuildContext context,
    required bool isDark,
  }) {
    return isDark
        ? const Icon(Icons.dark_mode_sharp)
        : const Icon(Icons.brightness_2);
  }
}

class IosModeIcon implements _PlatformThemeMode {
  @override
  Icon build({
    required BuildContext context,
    required bool isDark,
  }) {
    return isDark
        ? const Icon(CupertinoIcons.brightness_solid)
        : const Icon(CupertinoIcons.moon_fill);
  }
}
