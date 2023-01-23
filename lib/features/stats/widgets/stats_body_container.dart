import 'package:dota2_stat_river/features/stats/widgets/stat_content_container.dart';
import 'package:flutter/material.dart';

class StatBodyContainer extends StatelessWidget {
  final List<Widget> children;
  const StatBodyContainer({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //FIXME: this is global variable from flutter
        boxShadow: kElevationToShadow[4],
        color: Theme.of(context).cardColor,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const StatContentContainer(
              category: 'Category',
              total: 'Total',
              win: 'wins',
              isHeader: true,
            ),
            ...children,
          ],
        ),
      ),
    );
  }
}
