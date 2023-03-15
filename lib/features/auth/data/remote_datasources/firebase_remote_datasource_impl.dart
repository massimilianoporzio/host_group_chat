import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:host_group_chat/features/auth/data/models/user_model.dart';
import 'package:host_group_chat/features/auth/data/remote_datasources/firebase_remote_datasource.dart';

import '../../../profile/domain/entities/user_entity.dart';

class FirebaseRemoteDataSourceImpl implements FirebaseRemoteDS {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;

  FirebaseRemoteDataSourceImpl({
    required this.firestore,
    required this.auth,
    required this.googleSignIn,
  });
  @override
  Future<void> forgotPassword(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> getCreateCurrentUser(UserEntity user) async {
    final userCollection = firestore.collection("users");

    final uid = await getCurrentUserId();
    //*lo user può fare solo certe cose ne lSUO gorticello! (il suo documento)
    userCollection.doc(uid).get().then((userDoc) {
      //CREO IL MIO MODELLO e lo trasformo in map<String,dynamic> che
      //firestore digerisce
      final newUser = UserModel(
        name: user.name,
        uid: uid,
        phoneNumber: user.phoneNumber,
        email: user.email,
        profileUrl: user.profileUrl,
        isOnline: user.isOnline,
        status: user.status,
        dob: user.dob,
        gender: user.gender,
      ).toDocument();
      //CREATE UPDATE
      if (!userDoc.exists) {
        //CREATE
        userCollection.doc(uid).set(newUser);
        return;
      } else {
        //UPDATE
        userCollection.doc(uid).update(newUser);
        print("user already exist");
        return;
      }
    });
  }

  @override
  Future<String> getCurrentUserId() async => auth.currentUser!.uid;

  @override
  Future<void> getUpdateUser(UserEntity user) {
    // TODO: implement getUpdateUser
    throw UnimplementedError();
  }

  @override
  Future<void> googleAuth() {
    // TODO: implement googleAuth
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignedIn() async {
    return auth.currentUser?.uid != null;
  }

  @override
  Future<void> signIn(UserEntity user) async {
    await auth.signInWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }

  @override
  Future<void> signOut() async => await auth.signOut();

  @override
  Future<void> signUp(UserEntity user) async {
    await auth.createUserWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }
}
