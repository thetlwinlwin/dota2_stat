import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/herostat_api_service.dart';

class HeroSortbtn extends ConsumerWidget {
  const HeroSortbtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(heroSortingProvider);
    final isByName = result == HeroSortTypes.name;
    final iconColor = Theme.of(context).colorScheme.secondary;
    return IconButton(
      onPressed: () => ref.read(heroSortingProvider.notifier).update(
            (state) => state == HeroSortTypes.name
                ? HeroSortTypes.winRate
                : HeroSortTypes.name,
          ),
      icon: AnimatedCrossFade(
        firstChild: Icon(
          Icons.format_list_numbered_outlined,
          color: iconColor,
        ),
        secondChild: Icon(
          Icons.sort_by_alpha,
          color: iconColor,
        ),
        crossFadeState:
            isByName ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(
          milliseconds: 200,
        ),
      ),
    );
  }
}
