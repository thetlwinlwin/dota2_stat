import 'package:dota2_stat_river/features/app_drawer/app_drawer.dart';
import 'package:dota2_stat_river/features/recents/ui/recent_body.dart';
import 'package:dota2_stat_river/features/shared/widgets/app_bar.dart';
import 'package:flutter/material.dart';

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
