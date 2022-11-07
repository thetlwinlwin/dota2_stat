import 'package:dota2_stat_river/features/shared/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(titleText: 'Stats'),
      body: const Center(
        child: Text('Stats'),
      ),
    );
  }
}
