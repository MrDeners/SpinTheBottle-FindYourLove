import 'package:domain/domain.dart';

import '../../entities/user/user_entity.dart';
import '../../mapper/api_mapper.dart';
import '../../mapper/user/user_mapper.dart';
import '../../providers/api_provider.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiProvider _apiProvider;

  const ApiRepositoryImpl({
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
}
