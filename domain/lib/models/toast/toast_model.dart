import 'package:core/core.dart';
import '../../domain.dart';

part 'toast_model.freezed.dart';
part 'toast_model.g.dart';

@freezed
class ToastModel with _$ToastModel {
  @JsonSerializable(explicitToJson: true)
  const factory ToastModel({
    @Default('') String message,
    @Default(ToastType.notification) ToastType type,
  }) = _ToastModel;

  const ToastModel._();

  factory ToastModel.fromJson(Map<String, dynamic> json) => _$ToastModelFromJson(json);

}



