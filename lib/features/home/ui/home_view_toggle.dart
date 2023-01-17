import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/setting_service.dart';

class HomeViewToggle extends ConsumerWidget {
  const HomeViewToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isGrid =
        ref.watch(settingDataProvider.select((value) => value.isGrid));

    return IconButton(
      onPressed: () {
        ref.read(settingDataProvider.notifier).toggleview();
      },
      icon: _PlatformViewIcon(theme.platform).build(
        context: context,
        isGrid: isGrid,
      ),
    );
  }
}

abstract class _PlatformViewIcon {
  factory _PlatformViewIcon(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidViewIcon();
      case TargetPlatform.iOS:
        return IosViewIcon();
      default:
        return IosViewIcon();
    }
  }

  Icon build({
    required BuildContext context,
    required bool isGrid,
  });
}

class AndroidViewIcon implements _PlatformViewIcon {
  @override
  Icon build({
    required BuildContext context,
    required bool isGrid,
  }) {
    return isGrid
        ? const Icon(Icons.view_carousel_sharp)
        : const Icon(Icons.view_comfortable_sharp);
  }
}

class IosViewIcon implements _PlatformViewIcon {
  @override
  Icon build({
    required BuildContext context,
    required bool isGrid,
  }) {
    return isGrid
        ? const Icon(
            CupertinoIcons.rectangle_on_rectangle_angled,
          )
        : const Icon(
            CupertinoIcons.rectangle_grid_2x2,
          );
  }
}
