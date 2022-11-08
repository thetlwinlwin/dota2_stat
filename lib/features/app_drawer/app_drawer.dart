import 'package:flutter/material.dart';

import '../shared/widgets/logout_btn.dart';
import '../shared/widgets/theme_switcher.dart';
import 'menu_list.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Stack(
        children: const [
          Positioned(
            bottom: 10,
            right: 10,
            child: LogoutBtn(),
          ),
          MenuList(),
          Positioned(
            top: 10,
            right: 10,
            child: ThemeSwitcher(),
          ),
        ],
      ),
    );
  }
}
