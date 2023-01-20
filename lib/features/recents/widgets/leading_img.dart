import 'package:cached_network_image/cached_network_image.dart';
import 'package:dota2_stat_river/providers/herostat_api_service.dart';
import 'package:dota2_stat_river/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeadingImg extends ConsumerWidget {
  final int id;
  const LeadingImg({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heroStats = ref.watch(heroStatResultsProvider);

    return heroStats.maybeWhen(
      data: (data) {
        final stat = data.firstWhere((element) => element.id == id);
        return CachedNetworkImage(
          imageUrl: '$kImgBaseUrl${stat.img}',
          fit: BoxFit.cover,
          errorWidget: (context, url, error) => const Center(
            child: Icon(
              Icons.error_outline_sharp,
              size: 30,
            ),
          ),
        );
      },
      orElse: () => const Center(
        child: Icon(Icons.error_outline_rounded, size: 30),
      ),
    );
  }
}
