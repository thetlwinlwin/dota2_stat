import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dota2_stat_river/features/app_drawer/app_drawer.dart';
import 'package:dota2_stat_river/providers/game_constants_service.dart';
import 'package:dota2_stat_river/utils/constants.dart';

import '../../../providers/recents_api_service.dart';
import '../../shared/widgets/app_bar.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const AppDrawer(),
      appBar: MyCustomAppBar(
        titleText: 'Recents',
      ),
      body: const SafeArea(child: RecentBody()),
    );
  }
}

class RecentBody extends ConsumerWidget {
  const RecentBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(recentMatchesProvider);
    final constants = ref.watch(gameConstantsProvider).value;
    final smallTxtTheme = Theme.of(context).textTheme.bodySmall;

    return result.when(
      data: (recentMatches) => ListView.separated(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (context, index) {
          final recent = recentMatches[index];
          final String lobbyType = constants?.getType(
                lobbyTypeNum: recent.lobbyType,
              ) ??
              'Unknown';
          final String gameMode = constants?.getMode(
                modeNum: recent.gameMode,
              ) ??
              'Unknown';
          final imgUrl =
              ref.watch(heroImgUrlProvider(recent.heroId)).valueOrNull;

          return ListTile(
            minLeadingWidth: 60,
            leading: SizedBox(
              width: 60,
              child: _LeadingImg(url: imgUrl),
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _WinLoseTxt(
                  winOrLose: recent.getResult,
                ),
                Text(
                  lobbyType,
                  style: smallTxtTheme,
                ),
              ],
            ),
            title: Row(
              children: [
                Expanded(flex: 1, child: Text(recent.getTeam)),
                Expanded(flex: 2, child: Text(gameMode)),
              ],
            ),
            minVerticalPadding: 8,
            subtitle: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: _PartySize(partySizeTxt: recent.getPartySize),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    recent.getTime,
                    style: smallTxtTheme,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: recentMatches.length,
      ),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (message, _) => Center(child: Text(message.toString())),
    );
  }
}

class _WinLoseTxt extends StatelessWidget {
  final bool winOrLose;
  const _WinLoseTxt({
    Key? key,
    required this.winOrLose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      winOrLose ? 'Win' : 'Lose',
      style: TextStyle(
        color: winOrLose ? Colors.green : Colors.red,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }
}

class _PartySize extends StatelessWidget {
  final String partySizeTxt;
  const _PartySize({
    Key? key,
    required this.partySizeTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.people_outline),
        Text(partySizeTxt),
      ],
    );
  }
}

class _LeadingImg extends StatelessWidget {
  final String? url;
  const _LeadingImg({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return url != null
        ? CachedNetworkImage(
            imageUrl: '$kImgBaseUrl$url',
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(
              Icons.error_outline_sharp,
              size: 12,
            ),
          )
        : const Icon(
            Icons.error_outline_sharp,
            size: 12,
          );
  }
}
