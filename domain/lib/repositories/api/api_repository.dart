import '../../models/user/user_model.dart';

abstract class ApiRepository {
  Future<List<UserModel?>> getUsersOnTable();

  Future<void> saveTableChanges();

  Future<void> webSocketConnect(String url);

  Stream<dynamic> webSocketGetStream();

  Future<void> webSocketDisconnect();

  Future<String> getTableIdByUserData(UserModel user);
}