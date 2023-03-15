import 'package:host_group_chat/features/auth/data/remote_datasources/firebase_remote_datasource.dart';
import 'package:host_group_chat/features/auth/domain/repositories/firebase_repository.dart';
import 'package:host_group_chat/features/user/domain/entities/user_entity.dart';

class FirebserepositoryImpl implements FirebaseRepository {
  //USO L'implementazione delle datasources
  //*IL REPO ORCHESTRA LE DATASOURCES
  final FirebaseRemoteDS remoteDS;

  FirebserepositoryImpl({required this.remoteDS});

  @override
  Future<void> forgotPassword(String email) async =>
      remoteDS.forgotPassword(email);

  @override
  Future<void> getCreateCurrentUser(UserEntity user) async =>
      remoteDS.getCreateCurrentUser(user);

  @override
  Future<String> getCurrentUserId() async => remoteDS.getCurrentUserId();

  @override
  Future<void> getUpdateUser(UserEntity user) async =>
      remoteDS.getCurrentUserId();

  @override
  Future<void> googleAuth() async => remoteDS.googleAuth();

  @override
  Future<bool> isSignedIn() async => remoteDS.isSignedIn();

  @override
  Future<void> signIn(UserEntity user) async => remoteDS.signIn(user);

  @override
  Future<void> signOut() async => remoteDS.signOut();

  @override
  Future<void> signUp(UserEntity user) async => remoteDS.signUp(user);
}
