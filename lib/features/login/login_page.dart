import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/user_service.dart';
import '../shared/widgets/match_data_warning.dart';
import 'steam_id_textfield.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MatchDataWarning(),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IdText(),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    ref.read(userDataProvider.notifier).guestLogin();
                  },
                  child: Text(
                    'continue as a guest',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
