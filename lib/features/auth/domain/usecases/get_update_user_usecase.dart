import '../../../user/domain/entities/user_entity.dart';
import '../repositories/firebase_repository.dart';

class GetUpdateUserUsecase {
  final FirebaseRepository repository;

  GetUpdateUserUsecase({required this.repository});

  Future<void> getUpdateUser(UserEntity user) {
    return repository.getUpdateUser(user);
  }
}
