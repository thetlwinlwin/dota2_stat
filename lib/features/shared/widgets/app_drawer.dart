import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/routers.dart';
import '../../../providers/idstat_api_service.dart';
import '../../../utils/network_exceptions.dart';
import '../models/api_models/idstat_api_model.dart';
import 'drawer_profile_container.dart';
import 'logout_btn.dart';
import 'theme_switcher.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Stack(
        children: const [
          Positioned(
            bottom: 10,
            right: 10,
            child: LogoutBtn(),
          ),
          AppDrawerList(),
          Positioned(
            top: 10,
            right: 10,
            child: ThemeSwitcher(),
          ),
        ],
      ),
    );
  }
}

class AppDrawerList extends ConsumerWidget {
  const AppDrawerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isEnabled = false;

    final profileWidget = ref.watch(idStatApiStateProvider).when(
          data: (result) {
            isEnabled = result.profile!.isGuest;
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
    return Column(
      children: [
        Flexible(
          child: profileWidget,
        ),
        const SizedBox(height: 10),
        _AppDrawerRoute(
          isEnabled: isEnabled,
          name: AppRoutes.subStats.name,
        ),
        _AppDrawerRoute(
          isEnabled: isEnabled,
          name: AppRoutes.subRecents.name,
        ),
      ],
    );
  }
}

class _AppDrawerRoute extends StatelessWidget {
  final bool isEnabled;
  final String name;

  const _AppDrawerRoute({
    Key? key,
    required this.isEnabled,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnabled
          ? () {
              Navigator.pop(context);
              context.goNamed(name);
            }
          : null,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(width: 1),
          ),
        ),
        child: Center(
          child: Text(
            name.toUpperCase(),
            style: TextStyle(
              color: isEnabled
                  ? Theme.of(context).colorScheme.secondary
                  : Colors.grey,
            ),
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
    final String url = result.profile!.avatarmedium ?? '';
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
              style: Theme.of(context)
                  .textTheme
                  .headline4
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
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ],
      ),
    );
  }
}
