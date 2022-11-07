// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idstat_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdStat _$$_IdStatFromJson(Map<String, dynamic> json) => _$_IdStat(
      competitiveRank: json['competitive_rank'] as int?,
      rankTier: json['rank_tier'] as int?,
      profile: json['profile'] == null
          ? null
          : ProfileApi.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IdStatToJson(_$_IdStat instance) => <String, dynamic>{
      'competitive_rank': instance.competitiveRank,
      'rank_tier': instance.rankTier,
      'profile': instance.profile?.toJson(),
    };

_$_ProfileApi _$$_ProfileApiFromJson(Map<String, dynamic> json) =>
    _$_ProfileApi(
      accountId: json['account_id'] as int?,
      personaname: json['personaname'] as String,
      avatarmedium: json['avatarmedium'] as String?,
    );

Map<String, dynamic> _$$_ProfileApiToJson(_$_ProfileApi instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'personaname': instance.personaname,
      'avatarmedium': instance.avatarmedium,
    };
