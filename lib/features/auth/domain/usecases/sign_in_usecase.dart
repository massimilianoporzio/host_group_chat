import 'package:host_group_chat/features/auth/domain/repositories/firebase_repository.dart';
import 'package:host_group_chat/features/user/domain/entities/user_entity.dart';

class SignInUseCase {
  final FirebaseRepository repository;

  SignInUseCase({required this.repository});

  //*il caso d'uso orchestra i repositories (qui solo uno)
  Future<void> signIn(UserEntity user) {
    return repository.signIn(user);
  }
}
