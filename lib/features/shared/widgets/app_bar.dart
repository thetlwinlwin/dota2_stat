import 'package:flutter/material.dart';

import '../../home/ui/home_view_toggle.dart';
import 'settings_btn.dart';

class MyCustomAppBar extends AppBar {
  final String? titleText;
  final List<Widget>? widgets;
  MyCustomAppBar({
    Key? key,
    this.widgets,
    required this.titleText,
  }) : super(
          key: key,
          actions: [
            if (titleText != null) const HomeViewToggle(),
            if (widgets != null && widgets.isNotEmpty) ...widgets,
            const SettingsBtn(),
          ],
          title: Text(
            titleText ?? "Dota2",
          ),
        );
}
