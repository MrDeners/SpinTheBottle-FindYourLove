import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

part 'border_skin_model.freezed.dart';
part 'border_skin_model.g.dart';

@freezed
class BorderSkinModel with _$BorderSkinModel {
  const factory BorderSkinModel({
    @Default('') String id,
    @Default('') String name,
    @Default(AppImages.defaultBorder) AppImage skin,
    @Default(0) int price,
  }) = _BorderSkinModel;

  const BorderSkinModel._();

  factory BorderSkinModel.fromJson(Map<String, dynamic> json) => _$BorderSkinModelFromJson(json);

}