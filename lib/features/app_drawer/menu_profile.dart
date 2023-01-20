import 'package:dota2_stat_river/features/shared/widgets/profile_avatar.dart';
import 'package:dota2_stat_river/features/shared/widgets/profile_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/idstat_api_service.dart';
import '../../utils/network_exceptions.dart';
import '../shared/models/api_models/idstat_api_model.dart';
import '../shared/widgets/drawer_profile_container.dart';

class MenuProfile extends ConsumerWidget {
  const MenuProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(idStatProvider).when(
          data: (result) {
            return _ProfileCard(
              result: result,
            );
          },
          loading: () => const ProfileCardContainer(
            child: CircularProgressIndicator.adaptive(),
          ),
          error: (message, _) => ProfileCardContainer(
            child: FittedBox(
              child: Text(
                message.toString() == WrongIdException().toString()
                    ? message.toString()
                    : ' ',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        );
  }
}

class _ProfileCard extends StatelessWidget {
  final IdStat result;
  const _ProfileCard({
    Key? key,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url = result.profile?.avatarmedium;
    final theme = Theme.of(context);
    return ProfileCardContainer(
      isCenter: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileAvatar(imgUrl: url),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ProfileName(
              name: result.profile?.personaname,
              style: theme.textTheme.headline4?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          const Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.2,
            ),
          ),
          Text(
            'current MMR : ${result.competitiveRank ?? 'none'}',
            style: theme.textTheme.bodyText1
                ?.copyWith(color: theme.colorScheme.onPrimary),
          ),
        ],
      ),
    );
  }
}
