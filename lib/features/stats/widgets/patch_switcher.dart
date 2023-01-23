import 'package:dota2_stat_river/features/stats/provider/patch_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PatchSwitcher extends ConsumerWidget {
  const PatchSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final patch = ref.watch(patchSwitcherProvider);
    return Row(
      textBaseline: TextBaseline.ideographic,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        const Text('patch'),
        const SizedBox(width: 10),
        DropdownButton(
          alignment: AlignmentDirectional.centerEnd,
          value: patch,
          items: PatchList.values
              .map<DropdownMenuItem>(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.name),
                ),
              )
              .toList(),
          onChanged: (value) => ref.read(patchSwitcherProvider.notifier).update(
                (state) => value,
              ),
        )
      ],
    );
  }
}
