import 'package:core/core.dart';
import 'package:domain/domain.dart';

import '../../entities/user/user_entity.dart';
import '../../mapper/api_mapper.dart';
import '../../mapper/user/user_mapper.dart';
import '../../providers/api_provider.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiProvider _apiProvider;
  WebSocketChannel? _webSocketChannel;

  ApiRepositoryImpl({
    required ApiProvider apiProvider,
  }) : _apiProvider = apiProvider;

  @override
  Future<List<UserModel?>> getUsersOnTable() async {
    final List<UserModel?> users = <UserModel?>[
      for (final UserEntity? user in ApiMapper.usersToList(
        await _apiProvider.getUsersOnTable(),
      ))
        UserMapper.toModel(user),
    ];

    return users;
  }

  @override
  Future<void> saveTableChanges() async {
    await _apiProvider.saveTableChanges();
  }

  @override
  Future<void> webSocketConnect(String url) async {
    final Uri uri = Uri.parse(url);
    final WebSocketChannel chanel = await _apiProvider.webSocketConnect(uri);

    _webSocketChannel = chanel;
  }

  @override
  Stream<dynamic> webSocketGetStream() {
    try {
      return _webSocketChannel!.stream;
    } catch (e) {
      log('Unconnected WebSocket channel');
      throw const AppException(
        code: AppExceptionCode.unconnectedSocket,
        errorMessage: 'Unconnected WebSocket channel',
      );
    }
  }

  @override
  Future<void> webSocketDisconnect() async {
    await _webSocketChannel?.sink.close();
  }

  @override
  Future<String> getTableIdByUserData(UserModel user) async {
    final String tableId = await _apiProvider.getTableIdByUserData(user);

    return tableId;
  }
}
