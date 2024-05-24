import 'package:domain/domain.dart';

import '../../mapper/db_mapper.dart';
import '../../mapper/user/user_mapper.dart';
import '../../providers/firebase_db_provider.dart';

class DbRepositoryImpl implements DbRepository {
  static const String usersKey = 'users';
  final FirebaseDbProvider _dbProvider;

  const DbRepositoryImpl({required FirebaseDbProvider dbProvider}) : _dbProvider = dbProvider;

  @override
  Future<void> writeUser(UserModel data) async {
    await _dbProvider.write(
      DbMapper.noteToMap(
        UserMapper.toEntity(data)!,
      ),
      usersKey,
    );
  }
}
