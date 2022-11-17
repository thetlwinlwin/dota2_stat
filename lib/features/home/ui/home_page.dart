import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/connectivity_service.dart';
import '../../../providers/herostat_api_service.dart';
import '../../../providers/setting_service.dart';
import '../../app_drawer/app_drawer.dart';
import '../../shared/widgets/app_bar.dart';
import 'grid_view/grid_body.dart';
import 'page_view/page_body.dart';
import 'sorting_toggle.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(conStatusProvider, (previous, next) {
      if (next == ConStatus.off) {
        final sca = ScaffoldMessenger.of(context);
        sca.clearSnackBars();
        sca.showSnackBar(
            const SnackBar(content: Text('Device is disconnected.')));
      } else {
        ref.invalidate(heroStatapiStateProvider);
      }
    });

    final isGrid =
        ref.watch(settingDataProvider.select((value) => value.isGrid));

    return Scaffold(
      appBar: MyCustomAppBar(
        titleText: 'Highest WinRate',
        widgets: const [HeroSortbtn()],
      ),
      endDrawer: const AppDrawer(),
      body: RefreshIndicator(
        onRefresh: () async => ref.invalidate(heroStatapiStateProvider),
        child: SafeArea(
          child: isGrid ? const GridBody() : const PageBody(),
        ),
      ),
    );
  }
}
