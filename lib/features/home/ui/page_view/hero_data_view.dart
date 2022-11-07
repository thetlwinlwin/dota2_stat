import 'package:flutter/material.dart';

import '../../models/hero_table_model.dart';

class HeroDataContainer extends StatelessWidget {
  final HeroDataModel model;
  const HeroDataContainer({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'HERO ATTRIBUTES',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('POWER'),
                SizedBox(height: 5),
                Text('AGILE'),
                SizedBox(height: 5),
                Text('WISDOM'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.powerStr),
                const SizedBox(height: 5),
                Text(model.agileStr),
                const SizedBox(height: 5),
                Text(model.wisdomStr),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('ATTACK'),
                SizedBox(height: 5),
                Text('ARMOR'),
                SizedBox(height: 5),
                Text('MOBILE'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.attackStr),
                const SizedBox(height: 5),
                Text(model.armorStr),
                const SizedBox(height: 5),
                Text(model.mobileStr),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
