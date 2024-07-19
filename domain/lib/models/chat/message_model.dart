import '../../domain.dart';

class MessageModel {
  final UserModel sender;
  final String text;
  final DateTime creationTime;

  const MessageModel({
    required this.sender,
    required this.text,
    required this.creationTime,
  });
}