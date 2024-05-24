import '../../models/user/user_model.dart';

abstract class ApiRepository {
  Future<List<UserModel?>> getUsersOnTable();

  Future<void> saveTableChanges();
}