import 'package:cached_network_image/cached_network_image.dart';
import 'package:dota2_stat_river/providers/recents_api_service.dart';
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
