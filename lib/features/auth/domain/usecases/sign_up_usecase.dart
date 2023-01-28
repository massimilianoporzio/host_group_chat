import 'package:host_group_chat/features/user/domain/entities/user_entity.dart';

import '../repositories/firebase_repository.dart';

class SignUpUseCase {
  final FirebaseRepository repository;
  SignUpUseCase({required this.repository});

  Future<void> signUp(UserEntity user) {
    return repository.signUp(user);
  }
}
