import 'package:core_ui/core_ui.dart';

class TableSkinModel {
  final String id;
  final String name;
  final AppImage skin;
  final int price;

  const TableSkinModel({
    required this.id,
    required this.name,
    required this.skin,
    required this.price,
  });
}