import 'package:dota2_stat_river/features/shared/widgets/profile_avatar.dart';
import 'package:dota2_stat_river/features/shared/widgets/profile_name.dart';
import 'package:dota2_stat_river/providers/idstat_api_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatProfile extends ConsumerWidget {
  const StatProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(idStatProvider);
    return profile.maybeWhen(
      data: (data) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileAvatar(imgUrl: data.profile?.avatarmedium),
            const SizedBox(width: 10),
            ProfileName(
              name: data.profile?.personaname,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        );
      },
      orElse: () => const Text(
        'Error',
        textAlign: TextAlign.center,
      ),
    );
  }
}
