import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PatchList {
  latest,
  all;
}

final patchSwitcherProvider = StateProvider<PatchList>((ref) {
  return PatchList.all;
});
