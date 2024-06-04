import '../entities/user/user_entity.dart';

class DbMapper {
  static const String uidKey = 'uid';
  static const String moodTypeKey = 'moodType';
  static const String emotionsKey = 'emotions';
  static const String reasonsKey = 'reasons';
  static const String commentKey = 'comment';
  static const String tipKey = 'tip';
  static const String titleKey = 'title';
  static const String descriptionKey = 'description';
  static const String dateOfCreationKey = 'dateOfCreation';

  static Map<String, dynamic> userToMap(UserEntity user) {
    return user.toJson();
  }
}
