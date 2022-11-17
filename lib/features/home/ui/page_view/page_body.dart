import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/herostat_api_service.dart';
import '../../../../utils/constants.dart';
import '../../../shared/models/api_models/herostat_api_model.dart';
import '../../models/hero_table_model.dart';
import '../../provider/page_index.dart';
import '../../provider/sorting_heroes.dart';
import 'hero_data_view.dart';
import 'page_viewer_build.dart';

class PageBody extends ConsumerWidget {
  const PageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(heroStatapiStateProvider);
    final sortingType = ref.watch(heroSortingProvider);

    return state.when(
      data: (topheroes) {
        final List<HeroStats> result = List.from(topheroes);
        if (sortingType != HeroSortTypes.name) {
          result.sort(
            (a, b) => b.winRate.compareTo(a.winRate),
          );
        }
        return HomePageView(stats: result);
      },
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (message) => Center(
        child: Text(
          message.toString(),
        ),
      ),
    );
  }
}

class HomePageView extends ConsumerWidget {
  final List<HeroStats> stats;
  const HomePageView({
    Key? key,
    required this.stats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(pageIndexProvider);
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                    '$kImgBaseUrl${stats[index].img}'),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: PageViewer(stats: stats),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: HeroDataContainer(
              model: HeroDataModel.fromDataRsult(stats: stats[index]),
            ),
          ),
        ),
      ],
    );
  }
}
