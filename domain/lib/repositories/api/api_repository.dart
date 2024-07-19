import 'package:core/core.dart';

import '../../models/user/user_model.dart';

abstract class ApiRepository {
  Future<List<UserModel?>> getUsersOnTable();

  Future<void> saveTableChanges();

  Future<WebSocketChannel> webSocketConnect(String url);

  Future<void> webSocketDisconnect(WebSocketChannel chanel);

  Future<String> getTableIdByUserData(UserModel user);
}