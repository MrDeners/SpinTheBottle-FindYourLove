import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

part 'table_skin_model.freezed.dart';
part 'table_skin_model.g.dart';

@freezed
class TableSkinModel with _$TableSkinModel {
  const factory TableSkinModel({
    @Default('') String id,
    @Default('') String name,
    @Default(AppImages.mainTableSkin) AppImage skin,
    @Default(0) int price,
  }) = _TableSkinModel;

  const TableSkinModel._();

  factory TableSkinModel.fromJson(Map<String, dynamic> json) => _$TableSkinModelFromJson(json);

}