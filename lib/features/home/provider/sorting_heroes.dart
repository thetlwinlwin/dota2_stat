import 'package:flutter_riverpod/flutter_riverpod.dart';

enum HeroSortTypes {
  name,
  winRate,
}

final heroSortingProvider = StateProvider<HeroSortTypes>((ref) {
  return HeroSortTypes.name;
});
