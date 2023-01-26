import 'package:flutter/material.dart';
import 'package:host_group_chat/core/extensions/string_extension.dart';

import '../../../../core/presentation/theme/style.dart';
import '../pages/forgot_password_page.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ForgotPasswordPage.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Password dimenticata?",
            style: const TextStyle(
              color: Colors.green,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ).underlined(distance: 2),
          ),
        ],
      ),
    );
  }
}
