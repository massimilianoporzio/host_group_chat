import '../repositories/firebase_repository.dart';

class IsSigniInUsecase {
  final FirebaseRepository repository;

  IsSigniInUsecase({required this.repository});
  Future<bool> isSignIn() {
    return repository.isSignedIn();
  }
}
