const String kHeroStatsUrl = 'https://api.opendota.com/api/heroStats';
const String kImgBaseUrl = 'https://api.opendota.com';
const String kIdBaseUrl = 'https://api.opendota.com/api/players/';

String kRecentUrl({required String id}) =>
    'https://api.opendota.com/api/players/$id/recentMatches';

const String kPatchIdUrl = 'https://api.opendota.com/api/constants/patch';
