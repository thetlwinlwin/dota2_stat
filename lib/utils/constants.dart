const String kHeroStatsUrl = 'https://api.opendota.com/api/heroStats';
const String kImgBaseUrl = 'https://api.opendota.com';
const String kIdBaseUrl = 'https://api.opendota.com/api/players/';

String kRecentUrl({required String id}) =>
    'https://api.opendota.com/api/players/$id/recentMatches';

const String kPatchIdUrl = 'https://api.opendota.com/api/constants/patch';

Uri kPlayerStatsUri({
  required String steamId,
  String? patchId,
}) {
  return Uri(
    scheme: 'https',
    host: 'api.opendota.com',
    path: 'api/players/$steamId/counts',
    queryParameters: patchId != null ? {'patch': patchId} : null,
  );
}

Uri kMostPlayedHeroUri({
  required String steamId,
  String? patchId,
}) {
  return Uri(
    scheme: 'https',
    host: 'api.opendota.com',
    path: 'api/players/$steamId/heroes',
    queryParameters: patchId != null ? {'patch': patchId} : null,
  );
}
