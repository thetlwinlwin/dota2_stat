import 'package:cached_network_image/cached_network_image.dart';
import 'package:dota2_stat_river/features/app_drawer/app_drawer.dart';
import 'package:dota2_stat_river/providers/game_constants_service.dart';
import 'package:dota2_stat_river/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

    return result.when(
      data: (recentMatches) => ListView.separated(
        itemCount: recentMatches.length,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (context, index) {
          final recent = recentMatches[index];

          return ListTile(
            minLeadingWidth: 60,
            leading: SizedBox(
              width: 60,
              child: _LeadingImg(id: recent.heroId),
            ),
            trailing: _WinLoseTxt(winOrLose: recent.getResult),
            title: _TitleTxt(
              partSizeTxt: recent.getPartySize,
              side: recent.getTeam,
            ),
            subtitle: _ConstantsSubTitleTxt(
              gameMode: recent.gameMode,
              lobbyType: recent.lobbyType,
              startingTime: recent.getTime,
            ),
          );
        },
      ),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (message, _) => Center(child: Text(message.toString())),
    );
  }
}

class _LeadingImg extends ConsumerWidget {
  final int id;
  const _LeadingImg({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imgUrl = ref.watch(heroImgUrlProvider(id)).valueOrNull;
    return imgUrl != null
        ? CachedNetworkImage(
            imageUrl: '$kImgBaseUrl$imgUrl',
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Center(
              child: Icon(
                Icons.error_outline_sharp,
                size: 30,
              ),
            ),
          )
        : const Center(
            child: Icon(
              Icons.error_outline_sharp,
              size: 30,
            ),
          );
  }
}

class _TitleTxt extends StatelessWidget {
  final String side;
  final String partSizeTxt;
  const _TitleTxt({
    Key? key,
    required this.side,
    required this.partSizeTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.people_outline),
              Text(partSizeTxt),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(side),
        )
      ],
    );
  }
}

class _ConstantsSubTitleTxt extends ConsumerWidget {
  final String startingTime;
  final int lobbyType;
  final int gameMode;
  const _ConstantsSubTitleTxt({
    required this.startingTime,
    required this.lobbyType,
    required this.gameMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final smallTxtStyle = Theme.of(context).textTheme.bodySmall;
    final constants = ref.watch(gameConstantsProvider).valueOrNull;
    final getLobbyType =
        constants?.getType(lobbyTypeNum: lobbyType) ?? 'Unknown';
    final getGameMode = constants?.getMode(modeNum: gameMode) ?? 'Unknown';
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(getLobbyType),
            ),
            Expanded(
              flex: 3,
              child: Text(getGameMode),
            ),
          ],
        ),
        Text(
          startingTime,
          style: smallTxtStyle,
        ),
      ],
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          winOrLose ? 'Win' : 'Lose',
          style: TextStyle(
            color: winOrLose ? Colors.green : Colors.red,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
