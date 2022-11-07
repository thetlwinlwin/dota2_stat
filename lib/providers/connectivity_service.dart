import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ConStatus {
  on,
  off;
}

final _conpackageProvider = Provider<Connectivity>((ref) {
  return Connectivity();
});

final conStatusProvider =
    StateNotifierProvider<ConnStatusStateNotifier, ConStatus>((ref) {
  return ConnStatusStateNotifier(ref);
});

class ConnStatusStateNotifier extends StateNotifier<ConStatus> {
  ConnStatusStateNotifier(
    this._ref,
  ) : super(ConStatus.on) {
    initializing();
  }
  final Ref _ref;
  late Connectivity _con;

  void initializing() async {
    _con = _ref.read(_conpackageProvider);
    final initingResult = _converter(await _con.checkConnectivity());
    if (state != initingResult) {
      state = initingResult;
    }
    _con.onConnectivityChanged.listen((event) {
      final result = _converter(event);

      if (state != result) {
        state = result;
      }
    });
  }

  ConStatus _converter(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      return ConStatus.off;
    } else {
      return ConStatus.on;
    }
  }
}
