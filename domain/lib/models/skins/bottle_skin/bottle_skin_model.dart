import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

part 'bottle_skin_model.freezed.dart';
part 'bottle_skin_model.g.dart';

@freezed
class BottleSkinModel with _$BottleSkinModel {
  const factory BottleSkinModel({
    @Default('') String id,
    @Default('') String name,
    @Default(AppIcons.mainBottleSkin) AppIcon skin,
    @Default(0) int price,
  }) = _BottleSkinModel;

  const BottleSkinModel._();

  factory BottleSkinModel.fromJson(Map<String, dynamic> json) => _$BottleSkinModelFromJson(json);

}