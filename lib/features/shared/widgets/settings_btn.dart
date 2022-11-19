import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsBtn extends ConsumerWidget {
  const SettingsBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () => Scaffold.of(context).openEndDrawer(),
      icon: Icon(
        Icons.menu,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
