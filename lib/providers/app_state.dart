import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dota2_stat_river/features/shared/models/stored_data/user_data.dart';
import 'package:dota2_stat_river/providers/user_service.dart';

class AppState {
  final bool doneInit;
  final bool isLoggedin;
  AppState({
    required this.doneInit,
    required this.isLoggedin,
  });
  factory AppState.fresh() => AppState(doneInit: false, isLoggedin: false);

  @override
  String toString() {
    return 'init = $doneInit and signin = $isLoggedin';
  }
}

final appstateNotifierProvider =
    StateNotifierProvider<AppStateNotifier, AppState>((ref) {
  final notifier = AppStateNotifier();
  ref.listen(
    userDataProvider,
    (_, next) {
      notifier.loadData(data: next);
    },
  );
  return notifier;
});

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(AppState.fresh());

  void loadData({required UserData data}) {
    if (data.isGuest) {
      state = AppState(doneInit: true, isLoggedin: true);
    } else {
      if (data.steamId == null || data.steamId!.isEmpty) {
        state = AppState(doneInit: true, isLoggedin: false);
      } else if (data.steamId!.isNotEmpty) {
        state = AppState(doneInit: true, isLoggedin: true);
      }
    }
  }
}
