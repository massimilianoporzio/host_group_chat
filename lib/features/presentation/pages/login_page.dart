import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:host_group_chat/features/presentation/widgets/background_widget.dart';
import 'package:host_group_chat/features/presentation/widgets/text_field_input_widget.dart';
import 'package:host_group_chat/features/presentation/widgets/text_field_password_widget.dart';
import 'package:host_group_chat/features/presentation/widgets/theme/style.dart';

import '../widgets/header_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: BackgroundWidget(
          imagePath: 'assets/images/loginBackground.jpg',
          opacity: 0.85,
          backgroundColor: Colors.black,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 80),
              child: Column(
                children: [
                  SizedBox(
                    height: 128,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  const HeaderWidget(
                    title: 'Login',
                  ),
                  TextFieldInputWidget(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldPasswordWidget(
                    controller: _passwordController,
                    prefixIcon: Icons.lock,
                    suffixIcon: MaterialIcons.remove_red_eye,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
