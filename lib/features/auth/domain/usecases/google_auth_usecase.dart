import '../repositories/firebase_repository.dart';

class GoogleAuthUsecase {
  final FirebaseRepository repository;

  GoogleAuthUsecase({required this.repository});
  Future<void> googleAuth() {
    return repository.googleAuth();
  }
}
