import 'package:cached_network_image/cached_network_image.dart';
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
    return ref.watch(idStatApiStateProvider).when(
          data: (result) {
            return _ProfileCard(
              result: result,
            );
          },
          loading: () => const ProfileCardContainer(
            child: CircularProgressIndicator.adaptive(),
          ),
          error: (message) => ProfileCardContainer(
            child: Text(
              message == WrongIdException().toString() ? message : '',
              style: Theme.of(context).textTheme.headline3,
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
    final String url = result.profile!.avatarmedium ?? '';
    final theme = Theme.of(context).textTheme;
    return ProfileCardContainer(
      isCenter: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage:
                url.isEmpty ? null : CachedNetworkImageProvider(url),
            backgroundColor: Colors.transparent,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              result.profile!.personaname,
              style: theme.headline4
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
          const Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.2,
            ),
          ),
          Text(
            'current MMR : ${result.competitiveRank ?? 'none'}',
            style: theme.bodyText1
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ],
      ),
    );
  }
}
