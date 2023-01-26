import 'package:flutter/material.dart';
import 'package:host_group_chat/core/extensions/string_extension.dart';

import '../theme/style.dart';

class AuthRowWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback? onTap;
  final double? fontSize;

  const AuthRowWidget({
    super.key,
    this.firstText = "",
    this.secondText = "",
    this.onTap,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            secondText,
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Palette.kToDark,
              decorationThickness: 2,
              color: Palette.kToDark,
              fontWeight: FontWeight.w900,
              fontSize: fontSize! + 2,
            ).underlined(distance: 2),
          ),
        ),
      ],
    );
  }
}
