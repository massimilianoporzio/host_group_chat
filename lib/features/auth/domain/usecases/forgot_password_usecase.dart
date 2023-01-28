import '../repositories/firebase_repository.dart';

class ForgotPasswordUsecase {
  final FirebaseRepository repository;

  ForgotPasswordUsecase({required this.repository});

  Future<void> forgotPassword(String email) {
    return repository.forgotPassword(email);
  }
}
