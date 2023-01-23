import 'package:dota2_stat_river/features/recents/widgets/const_subtitle_txt.dart';
import 'package:dota2_stat_river/features/shared/widgets/leading_img.dart';
import 'package:dota2_stat_river/features/recents/widgets/title_txt.dart';
import 'package:dota2_stat_river/features/recents/widgets/win_lose_txt.dart';
import 'package:dota2_stat_river/providers/recents_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentBody extends ConsumerWidget {
  const RecentBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(recentMatchesProvider);

    return result.when(
      data: (recentMatches) => ListView.separated(
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        itemCount: recentMatches.length,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (context, index) {
          final recent = recentMatches[index];

          return ListTile(
            minLeadingWidth: 60,
            leading: SizedBox(
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LeadingImg(id: recent.heroId),
                ],
              ),
            ),
            trailing: WinLoseTxt(winOrLose: recent.getResult),
            title: TitleTxt(
              partSizeTxt: recent.getPartySize,
              side: recent.getTeam,
            ),
            subtitle: ContantSubTitleTxt(
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
