import 'package:host_group_chat/features/user/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    String name = "username",
    String email = "",
    String phoneNumber = "",
    bool isOnline = false,
    String uid = "",
    String status = "",
    String profileUrl = "",
    String dob = "",
    String gender = "",
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          isOnline: isOnline,
          uid: uid,
          status: status,
          profileUrl: profileUrl,
          gender: gender,
          dob: dob,
        );
}
