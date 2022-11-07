import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/shared/models/stored_data/setting_data.dart';
import 'load_local_shared.dart';

class SettingDataNotifier extends StateNotifier<SettingData> {
  final SharedPreferences _pref;
  SettingDataNotifier({required SharedPreferences pref})
      : _pref = pref,
        super(SettingData.original()) {
    initializing();
  }

  void initializing() async {
    final dark = _pref.getBool(SettingDataKeys.isDark.key);
    final grid = _pref.getBool(SettingDataKeys.isGrid.key);

    final result = state.copyWith(
        isDark: dark ?? state.isDark, isGrid: grid ?? state.isGrid);
    if (result != state) {
      state = result;
    }
  }

  void toggleMode() async {
    final result = state.copyWith(isDark: !state.isDark);
    if (result != state) {
      state = result;
      await _pref.setBool(SettingDataKeys.isDark.key, result.isDark);
    }
  }

  void toggleview() async {
    final result = state.copyWith(isGrid: !state.isGrid);
    if (result != state) {
      state = result;
      await _pref.setBool(SettingDataKeys.isGrid.key, result.isGrid);
    }
  }
}

final settingDataProvider =
    StateNotifierProvider<SettingDataNotifier, SettingData>((ref) {
  return SettingDataNotifier(
    pref: ref.watch(sharedProvider),
  )..initializing();
});
