import 'package:dota2_stat_river/providers/idstat_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/error/errorpage.dart';
import '../features/home/ui/home_page.dart';
import '../features/loading/loading_page.dart';
import '../features/login/login_page.dart';
import '../features/recents/ui/recent_page.dart';
import '../features/stats/ui/stats_page.dart';
import '../providers/app_state.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = AppRouter(ref);

  return GoRouter(
    refreshListenable: router,
    routes: router._routes,
    errorBuilder: router._errorBuilder,
    redirect: router._redirect,
    debugLogDiagnostics: true,
  );
});

class AppRouter extends ChangeNotifier {
  final Ref _ref;
  bool _isGuest = true;

  AppRouter(this._ref) {
    _ref.listen(appstateNotifierProvider, (_, __) {
      notifyListeners();
    });
    _ref.listen(idStatProvider, (_, next) {
      final playerAcc = next.valueOrNull;

      if (playerAcc != null && playerAcc.profile != null) {
        final isPlayerNameGuest = playerAcc.profile!.personaname == 'Guest';
        if (isPlayerNameGuest != _isGuest) {
          _isGuest = isPlayerNameGuest;
          notifyListeners();
        }
      }
    });
  }

  Future<String?> _redirect(BuildContext context, GoRouterState state) async {
    final currentState = _ref.read(appstateNotifierProvider);
    final isIniting = currentState.doneInit;
    final isLoggedIn = currentState.isLoggedin;
    final queryParams = Map<String, String>.from(state.queryParams);

    if (!isIniting && state.subloc != AppRoutes.loading.path) {
      queryParams['from'] = state.subloc;
      queryParams['next'] = AppRoutes.login.path;
      return Uri(
        path: AppRoutes.loading.path,
        queryParameters: queryParams,
      ).toString();
    }

    if (isIniting && !isLoggedIn && state.subloc == AppRoutes.loading.path) {
      final from = queryParams.remove('from');
      return Uri(path: from).toString();
    }

    if (isIniting && isLoggedIn && state.subloc == AppRoutes.loading.path) {
      final from = queryParams.remove('from');
      if (_isGuest && AppRoutes.accountOnlyRoutes().contains(from)) {
        return Uri(path: AppRoutes.home.path).toString();
      }
      return Uri(path: from).toString();
    }

    if (isIniting && !isLoggedIn && state.subloc != AppRoutes.login.path) {
      return state.namedLocation(AppRoutes.login.pathName);
    }

    if (isLoggedIn && state.subloc == AppRoutes.login.path) {
      return Uri(path: AppRoutes.home.path).toString();
    }

    // if (!isIniting && state.subloc != AppRoutes.loading.path) {
    //   return state.namedLocation('loading');
    // }

    // if (isIniting && !isLoggedIn && state.subloc != AppRoutes.login.path) {
    //   return state.namedLocation('login');
    // }
    // if ((isIniting && state.subloc == AppRoutes.loading.path) ||
    //     (isLoggedIn && state.subloc == AppRoutes.login.path)) {
    //   return state.namedLocation('home');
    // }
    return null;
  }

  Widget _errorBuilder(BuildContext context, GoRouterState state) =>
      ErrorPage(text: state.error.toString());

  List<GoRoute> get _routes => [
        GoRoute(
          path: AppRoutes.loading.path,
          name: AppRoutes.loading.pathName,
          builder: (_, __) => const LoadingPage(),
        ),
        GoRoute(
          path: AppRoutes.home.path,
          name: AppRoutes.home.pathName,
          builder: (_, __) => const HomePage(),
          routes: [
            GoRoute(
              path: AppRoutes.subStats.path,
              name: AppRoutes.subStats.pathName,
              builder: (__, _) => const StatsPage(),
            ),
            GoRoute(
              path: AppRoutes.subRecents.path,
              name: AppRoutes.subRecents.pathName,
              builder: (__, _) => const RecentPage(),
            ),
          ],
        ),
        GoRoute(
          path: '${AppRoutes.error.path}/:text',
          name: AppRoutes.error.pathName,
          builder: (_, state) {
            final errorText = state.params['text'];
            return ErrorPage(
                text: errorText ?? 'Please connect to the customer Support.');
          },
        ),
        GoRoute(
          path: '/',
          redirect: (_, state) => state.namedLocation('home'),
        ),
        GoRoute(
          path: AppRoutes.login.path,
          name: AppRoutes.login.pathName,
          builder: (_, state) => const LoginPage(),
        ),
      ];
}

enum AppRoutes {
  login('/login', 'login'),
  home('/home', 'home'),
  loading('/loading', 'loading'),
  error('/error', 'error'),
  subStats('stats', 'stats'),
  subRecents('recents', 'recents');

  final String path;
  final String pathName;
  const AppRoutes(this.path, this.pathName);

  static List<String> appDrawerRoutes() => [
        AppRoutes.home.pathName,
        AppRoutes.subRecents.pathName,
        AppRoutes.subStats.pathName,
      ];

  static List<String> accountOnlyRoutes() => [
        '${AppRoutes.home.path}/${AppRoutes.subRecents.path}',
        '${AppRoutes.home.path}/${AppRoutes.subStats.path}',
      ];
}
