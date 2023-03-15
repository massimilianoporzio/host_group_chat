import '../../../profile/domain/entities/user_entity.dart';
import '../repositories/firebase_repository.dart';

class GetCreateCurrentUserUsecase {
  final FirebaseRepository repository;

  GetCreateCurrentUserUsecase(this.repository);

  Future<void> getCreateCurrentUser(UserEntity user) {
    return repository.getCreateCurrentUser(user);
  }
}
