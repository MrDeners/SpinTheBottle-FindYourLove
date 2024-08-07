import 'package:core_ui/core_ui.dart';
import '../domain.dart';

class TableModel {
  final String id;
  final List<UserModel> users;
  final TableSkinModel tableSkin;
  final BottleSkinModel bottleSkin;
  final String currentUserId;

  const TableModel({
    this.id = 'user',
    this.users = const <UserModel>[],
    this.tableSkin = const TableSkinModel(id: '0', skin: AppImages.mainTableSkin, price: 0, name: 'Default'),
    this.bottleSkin = const BottleSkinModel(id: '0', skin: AppIcons.mainBottleSkin, price: 0, name: 'Default'),
    this.currentUserId = '',
  });

  const TableModel.empty()
      : id = '',
        users = const <UserModel>[],
        tableSkin = const TableSkinModel(id: '0', skin: AppImages.mainTableSkin, price: 0, name: 'Default'),
        bottleSkin = const BottleSkinModel(id: '0', skin: AppIcons.mainBottleSkin, price: 0, name: 'Default'),
        currentUserId = '';
}
