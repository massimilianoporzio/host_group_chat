import '../repositories/firebase_repository.dart';

class GetCurrentUserIdUsecase {
  final FirebaseRepository repository;

  GetCurrentUserIdUsecase({required this.repository});
  Future<String> getCurrentUserId() {
    return repository.getCurrentUserId();
  }
}
