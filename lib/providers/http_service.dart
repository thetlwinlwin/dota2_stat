import 'dart:convert';

import 'package:dota2_stat_river/features/shared/models/api_models/player_stats_api_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../features/shared/models/api_models/herostat_api_model.dart';
import '../features/shared/models/api_models/idstat_api_model.dart';
import '../features/shared/models/api_models/recents_api_model.dart';
import '../utils/constants.dart';
import '../utils/network_exceptions.dart';

class Repository {
  final http.Client _client;

  Repository(this._client);

  Future<List<HeroStats>> getStats() async {
    try {
      final callResult = await _client.get(Uri.parse(kHeroStatsUrl));
      if (callResult.statusCode == 200) {
        final data = callResult.body;
        return await HeroStats.getJson(data);
      } else {
        throw GenericException(callResult.body);
      }
    } on NetworkException catch (_) {
      rethrow;
    }
  }

  Future<PlayerStats> getPlayerStats(
      {required String steamId, String? patchId}) async {
    final Uri playerStatsUri = Uri(
      scheme: 'https',
      host: 'api.opendota.com',
      path: 'api/players/$steamId/counts',
      queryParameters: patchId != null ? {'patch': patchId} : null,
    );
    try {
      final callResult = await _client.get(playerStatsUri);
      if (callResult.statusCode == 200) {
        final data = callResult.body;
        return await PlayerStats.getJson(data);
      } else {
        throw GenericException(callResult.body);
      }
    } on NetworkException catch (_) {
      rethrow;
    }
  }

  Future<int> getLatestPatchId() async {
    try {
      final callResult = await _client.get(Uri.parse(kPatchIdUrl));
      if (callResult.statusCode == 200) {
        final data = callResult.body;
        final result = List.from(jsonDecode(data));
        return result.last['id'];
      } else {
        throw GenericException(callResult.body);
      }
    } on NetworkException catch (_) {
      rethrow;
    }
  }

  Future<IdStat> getProfileStat({required String steamId}) async {
    try {
      final callResult = await _client.get(Uri.parse('$kIdBaseUrl$steamId'));
      if (callResult.statusCode == 200) {
        final data = callResult.body;

        final result = await IdStat.getJson(data);
        if (result.profile != null) {
          return result;
        } else {
          throw WrongIdException();
        }
      } else {
        throw GenericException(callResult.body);
      }
    } on NetworkException catch (_) {
      rethrow;
    }
  }

  Future<List<RecentMatches>> getRecents({required String steamId}) async {
    try {
      final uriToParse = kRecentUrl(id: steamId);
      final callResult = await _client.get(Uri.parse(uriToParse));
      if (callResult.statusCode == 200) {
        final data = callResult.body;
        final result = await RecentMatches.getJson(data);
        if (result.isEmpty) {
          throw NoRecentException();
        }
        return result;
      } else {
        throw GenericException(callResult.body);
      }
    } on NetworkException catch (_) {
      rethrow;
    }
  }
}

final repositoryProvider = Provider<Repository>((ref) {
  return Repository(http.Client());
});
