import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../shared/models/api_models/herostat_api_model.dart';

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
                    Text(
                      stat.name,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${stat.winRate.toStringAsPrecision(4)}%',
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
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
