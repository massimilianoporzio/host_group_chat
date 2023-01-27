import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:host_group_chat/core/constants.dart';

import 'package:host_group_chat/core/presentation/widgets/background_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/container_button_widget.dart';

import 'package:host_group_chat/features/auth/presentation/widgets/forgot_password_widget.dart';

import 'package:host_group_chat/features/auth/presentation/widgets/text_field_password_widget.dart';

import '../../../../core/presentation/widgets/text_field_input_widget.dart';
import '../widgets/auth_row_widget.dart';
import '../../../../core/presentation/widgets/header_widget.dart';

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
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 80),
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
                      hintText: "Email",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldPasswordWidget(
                      controller: _passwordController,
                      prefixIcon: Icons.lock,
                      suffixIcon: MaterialIcons.remove_red_eye,
                      hintText: "Password",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ForgotPasswordWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    ContainerButtonWidget(
                      text: "Login",
                      onTap: () {
                        //TODO login con email e password
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthRowWidget(
                      mainAxisAlignment: MainAxisAlignment.center,
                      fontSize: 14,
                      firstText: "Non hai un account? ",
                      secondText: "Registrati",
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(
                            PageConst.registerPageRouteName);
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FlutterSocialButton(
                      onTap: () {
                        //TODO login with email and password
                      },
                      buttonType: ButtonType.google,
                      mini: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
