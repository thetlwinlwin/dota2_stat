import '../../shared/models/api_models/herostat_api_model.dart';

class HeroDataModel {
  final int power;
  final int agile;
  final int wisdom;
  final double powerGain;
  final double agileGain;
  final double wisdomGain;
  final int attack;
  final int armor;
  final int mobile;
  HeroDataModel({
    required this.power,
    required this.agile,
    required this.wisdom,
    required this.powerGain,
    required this.agileGain,
    required this.wisdomGain,
    required this.attack,
    required this.armor,
    required this.mobile,
  });

  String get powerStr => '${power.toString()}+${powerGain.toString()}';
  String get agileStr => '${agile.toString()}+${agileGain.toString()}';
  String get wisdomStr => '${wisdom.toString()}+${wisdomGain.toString()}';
  String get attackStr => attack.toString();
  String get armorStr => armor.toString();
  String get mobileStr => mobile.toString();

  factory HeroDataModel.fromDataRsult({required HeroStats stats}) {
    return HeroDataModel(
      power: stats.power as int,
      agile: stats.agile as int,
      wisdom: stats.wisdom as int,
      powerGain: stats.powerGain as double,
      agileGain: stats.agileGain as double,
      wisdomGain: stats.wisdomGain as double,
      attack: stats.attack as int,
      armor: stats.armor as int,
      mobile: stats.mobile as int,
    );
  }
}
