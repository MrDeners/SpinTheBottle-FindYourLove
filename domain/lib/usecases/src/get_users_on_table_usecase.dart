import '../../domain.dart';
import 'usecase.dart';

class GetUsersOnTableUseCase implements FutureUseCase<NoParams, List<UserModel?>> {
  final ApiRepository _apiRepository;

  const GetUsersOnTableUseCase({
    required ApiRepository apiRepository,
  }) : _apiRepository = apiRepository;

  @override
  Future<List<UserModel?>> execute([NoParams? noParams]) async {
    final List<UserModel?> users = await _apiRepository.getUsersOnTable();
    return users;
  }
}
