import 'package:flutter/material.dart';
import 'package:host_group_chat/core/constants.dart';
import 'package:host_group_chat/core/extensions/textstyle_extension.dart';
import 'package:host_group_chat/features/auth/presentation/widgets/auth_row_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/background_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/container_button_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/header_widget.dart';
import 'package:host_group_chat/features/auth/presentation/widgets/profile_widget.dart';

import '../../../../core/presentation/theme/style.dart';

import '../../../../core/presentation/widgets/privacy_and_terms_widget.dart';
import '../../../../core/presentation/widgets/text_field_input_widget.dart';
import '../widgets/text_field_password_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _password1Controller = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _password1Controller.dispose();
    _password2Controller.dispose();
    _dobController.dispose();
    _genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackgroundWidget(
        backgroundColor: Colors.black,
        opacity: 0.85,
        imagePath: "assets/images/loginBackground.jpg",
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 50,
              ),
              child: Column(
                children: [
                  const HeaderWidget(title: "Registrazione"),
                  const SizedBox(
                    height: 10,
                  ),
                  const ProfileWidget(
                    radius: 40,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 160,
                    child: Text(
                      "Aggiungi una foto del profilo",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Palette.kToDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        decorationThickness: 3,
                        decorationColor: Palette.kToDark,
                      ).underlined(distance: 2),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldInputWidget(
                    controller: _usernameController,
                    keyboardType: TextInputType.text,
                    prefixIcon: Icons.person,
                    hintText: "Username",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldInputWidget(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.mail,
                    hintText: "Email",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    indent: 120,
                    endIndent: 120,
                    color: Colors.white,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldPasswordWidget(
                    controller: _password1Controller,
                    hintText: "Password",
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldPasswordWidget(
                    controller: _password2Controller,
                    hintText: "Password (di nuovo)",
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFieldInputWidget(
                    controller: _dobController,
                    hintText: "Data di nascita",
                    prefixIcon: Icons.calendar_month_rounded,
                    keyboardType: TextInputType.datetime,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldInputWidget(
                    controller: _genderController,
                    hintText: "Genere",
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const ContainerButtonWidget(
                    text: "Registrati*",
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AuthRowWidget(
                    mainAxisAlignment: MainAxisAlignment.center,
                    fontSize: 14,
                    firstText: "Hai già un account? ",
                    secondText: "Login",
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(PageConst.loginPageRouteName);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const PrivacyPolicyTermsWidget(
                    testo: 'Registrati',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
