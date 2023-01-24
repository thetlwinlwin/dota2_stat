import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'navigation/routers.dart';
import 'providers/load_local_shared.dart';
import 'providers/setting_service.dart';
import 'utils/theme.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "new":"${newValue.runtimeType}",
  "pre ":"${previousValue.runtimeType}",
}''');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  // runApp(ProviderScope(
  //   overrides: [
  //     sharedProvider.overrideWithValue(sharedPreferences),
  //   ],
  //   child: const MyApp(),
  // ));
  usePathUrlStrategy();
  runApp(
    ProviderScope(
      overrides: [sharedProvider.overrideWithValue(sharedPreferences)],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark =
        ref.watch(settingDataProvider.select((value) => value.isDark));
    final GoRouter myRouter = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: myRouter,
      darkTheme: mydarkTheme,
      theme: mylightTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
