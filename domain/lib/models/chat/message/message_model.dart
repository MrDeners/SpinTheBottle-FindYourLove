import 'package:core/core.dart';
import '../../../domain.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  @JsonSerializable(explicitToJson: true)
  factory MessageModel({
    @Default(UserModel()) UserModel sender,
    @Default('') String text,
    required DateTime creationTime,
  }) = _MessageModel;

  const MessageModel._();

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

}



