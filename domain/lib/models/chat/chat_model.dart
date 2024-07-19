import '../../domain.dart';

class ChatModel {
  final List<MessageModel> lastMessages;

  const ChatModel({
    required this.lastMessages,
  });
}