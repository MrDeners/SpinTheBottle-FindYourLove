import '../../domain.dart';
import 'usecase.dart';

class WriteUserToDbUseCase implements FutureUseCase<UserModel, void> {
  final DbRepository _dbRepository;

  const WriteUserToDbUseCase({
    required DbRepository dbRepository,
  }) : _dbRepository = dbRepository;

  @override
  Future<void> execute(UserModel user) async {
    await _dbRepository.writeUser(user);
  }
}
