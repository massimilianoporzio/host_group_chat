import 'package:host_group_chat/features/user/domain/entities/user_entity.dart';

import '../repositories/firebase_repository.dart';

class GoogleAuthUsecase {
  final FirebaseRepository repository;

  GoogleAuthUsecase({required this.repository});
  Future<void> googleAuth() {
    return repository.googleAuth();
  }
}
