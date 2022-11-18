import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/sorting_heroes.dart';

class HeroSortbtn extends ConsumerWidget {
  const HeroSortbtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(heroSortingProvider);
    final isByName = result == HeroSortTypes.name;

    return IconButton(
      onPressed: () => ref.read(heroSortingProvider.notifier).update(
            (state) => state == HeroSortTypes.name
                ? HeroSortTypes.winRate
                : HeroSortTypes.name,
          ),
      icon: AnimatedCrossFade(
        firstChild: const Icon(Icons.format_list_numbered_outlined),
        secondChild: const Icon(Icons.sort_by_alpha),
        crossFadeState:
            isByName ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(
          milliseconds: 200,
        ),
      ),
    );
  }
}
