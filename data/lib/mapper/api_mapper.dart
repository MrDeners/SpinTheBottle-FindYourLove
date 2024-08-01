import '../entities/user/user_entity.dart';

class ApiMapper {
  static Map<String, dynamic> usersToMap(List<UserEntity> users) {
    final Map<String, dynamic> usersMap = <String, dynamic>{};

    for (int i = 0; i < 12; i++) {
      usersMap[i.toString()] = users[i].toJson();
    }

    return usersMap;
  }

  static List<UserEntity?> usersToList(Map<String, dynamic> usersMap) {
    final List<UserEntity?> users = usersMap.entries
        .map(
          (MapEntry<String, dynamic> userMap) =>
      userMap.value != null ? UserEntity.fromJson(userMap.value) : null,
    )
        .toList();

    return users;
  }
}
