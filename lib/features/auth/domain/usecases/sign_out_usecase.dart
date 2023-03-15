import '../repositories/firebase_repository.dart';

class SignOutUsecase {
  final FirebaseRepository repository;

  SignOutUsecase({required this.repository});
  Future<void> signOut() {
    return repository.signOut();
  }
}
