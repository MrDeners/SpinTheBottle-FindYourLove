import 'package:core/core.dart';

import '../../../domain.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  @JsonSerializable(explicitToJson: true)
  const factory ChatModel({
    @Default(<MessageModel>[]) List<MessageModel> message,
  }) = _ChatModel;

  const ChatModel._();

  factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);

}



