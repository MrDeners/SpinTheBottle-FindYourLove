import '../../domain.dart';
import 'usecase.dart';

class UpdateUserDataOnDbUseCase implements FutureUseCase<UserModel, void> {
  final DbRepository _dbRepository;

  const UpdateUserDataOnDbUseCase({
    required DbRepository dbRepository,
  }) : _dbRepository = dbRepository;

  @override
  Future<void> execute(UserModel user) async {
    await _dbRepository.updateUserData(user);
  }
}
