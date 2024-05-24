import '../../domain.dart';

abstract class DbRepository {
  Future<void> writeUser(UserModel data);
}
