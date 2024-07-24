import 'package:core/core.dart';

import '../../domain.dart';

part 'table_model.freezed.dart';

part 'table_model.g.dart';

@freezed
class TableModel with _$TableModel {
  @JsonSerializable(explicitToJson: true)
  const factory TableModel({
    @Default('') String id,
    @Default(<UserModel>[]) List<UserModel> users,
    @Default(TableSkinModel()) TableSkinModel tableSkin,
    @Default(BottleSkinModel()) BottleSkinModel bottleSkin,
    @Default('') String currentUserId,
  }) = _TableModel;

  const TableModel._();

  factory TableModel.fromJson(Map<String, dynamic> json) => _$TableModelFromJson(json);
}
