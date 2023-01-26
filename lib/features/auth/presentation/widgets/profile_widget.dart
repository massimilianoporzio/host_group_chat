import 'package:flutter/material.dart';
import 'package:host_group_chat/core/extensions/string_extension.dart';
import 'package:host_group_chat/features/auth/presentation/widgets/text_field_input_widget.dart';
import 'package:host_group_chat/features/auth/presentation/widgets/text_field_password_widget.dart';

import '../../../../core/presentation/theme/style.dart';

class ProfileWidget extends StatefulWidget {
  final double? radius;

  const ProfileWidget({super.key, this.radius = 36});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: widget.radius,
          child: Image.asset(
            "assets/images/profile_default.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
