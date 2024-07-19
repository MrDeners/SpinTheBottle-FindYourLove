import '../../domain.dart';
import 'usecase.dart';

class GetTableIdByUserDataUseCase implements FutureUseCase<UserModel, String> {
  final ApiRepository _apiRepository;

  const GetTableIdByUserDataUseCase({
    required ApiRepository apiRepository,
  }) : _apiRepository = apiRepository;

  @override
  Future<String> execute(UserModel user) async {
   return _apiRepository.getTableIdByUserData(user);
  }
}
