import 'package:core/core.dart';

enum LeagueLevel {
  wood(milestoneRewards: <String>[]),
  bronze(milestoneRewards: <String>[]),
  iron(milestoneRewards: <String>[]),
  silver(milestoneRewards: <String>[]),
  gold(milestoneRewards: <String>[]),
  diamond(milestoneRewards: <String>[]),
  platinum(milestoneRewards: <String>[]),
  royal(milestoneRewards: <String>[]);

  String get name {
    switch (this) {
      case LeagueLevel.wood:
        return LocaleKeys.league_leagueLevel_wood.tr();
      case LeagueLevel.bronze:
        return LocaleKeys.league_leagueLevel_bronze.tr();
      case LeagueLevel.iron:
        return LocaleKeys.league_leagueLevel_iron.tr();
      case LeagueLevel.silver:
        return LocaleKeys.league_leagueLevel_silver.tr();
      case LeagueLevel.gold:
        return LocaleKeys.league_leagueLevel_gold.tr();
      case LeagueLevel.diamond:
        return LocaleKeys.league_leagueLevel_diamond.tr();
      case LeagueLevel.platinum:
        return LocaleKeys.league_leagueLevel_platinum.tr();
      case LeagueLevel.royal:
        return LocaleKeys.league_leagueLevel_royal.tr();
    }
  }

  final List<String> milestoneRewards;

  const LeagueLevel({
    required this.milestoneRewards,
  });
}
