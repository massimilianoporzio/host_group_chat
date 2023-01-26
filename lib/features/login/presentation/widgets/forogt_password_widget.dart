import 'package:flutter/material.dart';

import '../../../../core/presentation/theme/style.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Text(
          "Forgot Password?",
          style: TextStyle(
              color: Colors.green, fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
