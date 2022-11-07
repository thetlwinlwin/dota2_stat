import 'package:flutter/material.dart';

import '../../home/ui/home_view_toggle.dart';
import 'settings_btn.dart';

class MyCustomAppBar extends AppBar {
  final String? titleText;
  MyCustomAppBar({
    Key? key,
    required this.titleText,
  }) : super(
          key: key,
          actions: [
            if (titleText != null) const HomeViewToggle(),
            const SettingsBtn(),
          ],
          title: Text(
            titleText ?? "Dota2",
          ),
        );
}
