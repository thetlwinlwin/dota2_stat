import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../shared/models/api_models/herostat_api_model.dart';
import '../../../shared/widgets/rotate_text_animation.dart';

class HeroCard extends StatelessWidget {
  final HeroStats stat;
  const HeroCard({
    Key? key,
    required this.stat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => print('hi'),
        onHover: (value) {},
        child: Stack(
          children: [
            Ink.image(
              image: CachedNetworkImageProvider('$kImgBaseUrl${stat.img}'),
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).backgroundColor.withOpacity(0.7),
                ),
                child: Column(
                  children: [
                    RotateText(
                      textList: [
                        stat.name,
                        '${stat.winRate.toStringAsPrecision(4)}%',
                      ],
                      duration: const Duration(seconds: 2),
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
