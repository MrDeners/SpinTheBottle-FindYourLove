import 'package:domain/domain.dart';

import '../../entities/user/user_entity.dart';

class UserMapper {
  static UserModel? toModel(UserEntity? entity) {
    return entity == null ? null : UserModel(
      id: entity.id,
      firstName: entity.firstName,
      secondName: entity.secondName,
      age: entity.age,
      heartsAmount: entity.heartsAmount,
      avatar: entity.avatar,
      border: entity.border,
    );
  }

  static UserEntity? toEntity(UserModel? model) {
    return model == null ? null : UserEntity(
      id: model.id,
      firstName: model.firstName,
      secondName: model.secondName,
      age: model.age,
      heartsAmount: model.heartsAmount,
      avatar: model.avatar,
      border: model.border,
    );
  }
}
