import 'package:flutter/material.dart';

import '../../home/ui/home_view_toggle.dart';
import 'settings_btn.dart';

enum AppBarTitle {
  home,
  recent,
  stats,
}

class MyCustomAppBar extends AppBar {
  final AppBarTitle appBarTitle;
  final List<Widget>? widgets;
  MyCustomAppBar({
    Key? key,
    this.widgets,
    required this.appBarTitle,
  }) : super(
          key: key,
          actions: [
            if (appBarTitle == AppBarTitle.home) const HomeViewToggle(),
            if (widgets != null && widgets.isNotEmpty) ...widgets,
            const SettingsBtn(),
          ],
          title: Text(
            appBarTitle.name.toUpperCase(),
          ),
        );
}
