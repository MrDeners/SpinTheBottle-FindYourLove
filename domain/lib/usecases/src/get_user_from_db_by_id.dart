import '../../domain.dart';
import 'usecase.dart';

class GetUserFromDbByIdUseCase implements FutureUseCase<String, UserModel> {
  final DbRepository _dbRepository;

  const GetUserFromDbByIdUseCase({
    required DbRepository dbRepository,
  }) : _dbRepository = dbRepository;

  @override
  Future<UserModel> execute(String id) async {
   return _dbRepository.getUserById(id);
  }
}
