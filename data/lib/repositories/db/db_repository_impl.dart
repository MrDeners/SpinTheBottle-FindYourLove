import 'package:domain/domain.dart';

import '../../entities/user/user_entity.dart';
import '../../mapper/db_mapper.dart';
import '../../mapper/user/user_mapper.dart';
import '../../providers/firebase_db_provider.dart';

class DbRepositoryImpl implements DbRepository {
  static const String usersKey = 'users';
  static const String idKey = 'id';
  final FirebaseDbProvider _dbProvider;

  const DbRepositoryImpl({
    required FirebaseDbProvider dbProvider,
  }) : _dbProvider = dbProvider;

  @override
  Future<void> writeUser(UserModel data) async {
    await _dbProvider.write(
      DbMapper.userToMap(
        UserMapper.toEntity(data)!,
      ),
      usersKey,
    );
  }

  @override
  Future<void> updateUserData(UserModel data) async {
    await _dbProvider.update(
      DbMapper.userToMap(
        UserMapper.toEntity(data)!,
      ),
      usersKey,
      data.id,
    );
  }

  @override
  Future<UserModel> getUserById(String id) async {
    final List<Map<String, dynamic>> users = await _dbProvider.getByFilter(usersKey, idKey, id);
    return UserMapper.toModel(UserEntity.fromJson(users.first))!;
  }
}
