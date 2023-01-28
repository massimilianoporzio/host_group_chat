import '../../../user/domain/entities/user_entity.dart';

abstract class FirebaseRemoteDS {
  //Credential Section
  Future<void> signIn(UserEntity user);
  Future<void> signUp(UserEntity user);
  Future<bool> isSignedIn();
  Future<void> signOut();
  Future<void> forgotPassword(String email);
  Future<void> googleAuth();
  Future<void> getUpdateUser(UserEntity user);
  Future<void> getCreateCurrentUser(UserEntity user);
  Future<String> getCurrentUserId();
}
