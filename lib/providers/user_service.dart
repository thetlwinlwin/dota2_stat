import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/shared/models/stored_data/user_data.dart';
import 'load_local_shared.dart';

final userDataProvider =
    StateNotifierProvider<UserDataNotifier, UserData>((ref) {
  return UserDataNotifier(pref: ref.watch(sharedProvider))..ready();
});

class UserDataNotifier extends StateNotifier<UserData> {
  UserDataNotifier({required SharedPreferences pref})
      : _pref = pref,
        super(UserData.fresh());
  final SharedPreferences _pref;

  void ready() async {
    final readyResult = state.copyWith(
      isGuest: _pref.getBool(UserDataKeys.isGuest.key) ?? state.isGuest,
      steamId: _pref.getString(UserDataKeys.steamId.key),
    );

    if (readyResult != state) {
      state = readyResult;
    }
  }

  void guestLogin() async {
    final readyResult = state.copyWith(
      isGuest: true,
    );
    if (readyResult != state) {
      state = readyResult;
      await _pref.setBool(UserDataKeys.isGuest.key, readyResult.isGuest);
    }
  }

  void idLogin({required String id}) async {
    final readyResult = UserData(isGuest: false, steamId: id);
    if (readyResult != state) {
      state = readyResult;
      await _pref.setBool(UserDataKeys.isGuest.key, false);
      await _pref.setString(UserDataKeys.steamId.key, id);
    }
  }

  void logout() async {
    state = UserData.fresh();
    await _pref.remove(UserDataKeys.isGuest.key);
    await _pref.remove(UserDataKeys.steamId.key);
  }
}
