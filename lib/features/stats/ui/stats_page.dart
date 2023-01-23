import 'package:dota2_stat_river/features/app_drawer/app_drawer.dart';
import 'package:dota2_stat_river/features/shared/widgets/app_bar.dart';
import 'package:dota2_stat_river/features/stats/ui/stats_body.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(appBarTitle: AppBarTitle.stats),
      endDrawer: const AppDrawer(),
      body: const StatBody(),
    );
  }
}
