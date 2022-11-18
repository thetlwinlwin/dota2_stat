import 'package:flutter/cupertino.dart';
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
      icon: _PlatformViewToggle(Theme.of(context).platform).build(
        context: context,
        iconColor: iconColor,
        isGrid: isGrid,
      ),
    );
  }
}

abstract class _PlatformViewToggle {
  factory _PlatformViewToggle(TargetPlatform platform) {
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
    required Color iconColor,
    required bool isGrid,
  });
}

class AndroidModeIcon implements _PlatformViewToggle {
  @override
  Icon build({
    required BuildContext context,
    required bool isGrid,
    required Color iconColor,
  }) {
    return isGrid
        ? Icon(Icons.view_carousel_sharp, color: iconColor)
        : Icon(Icons.view_comfortable_sharp, color: iconColor);
  }
}

class IosModeIcon implements _PlatformViewToggle {
  @override
  Icon build({
    required BuildContext context,
    required Color iconColor,
    required bool isGrid,
  }) {
    return isGrid
        ? const Icon(CupertinoIcons.rectangle_grid_2x2)
        : const Icon(CupertinoIcons.rectangle_on_rectangle_angled);
  }
}
