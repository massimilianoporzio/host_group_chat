import 'package:flutter/material.dart';
import 'package:host_group_chat/core/constants.dart';
import 'package:host_group_chat/features/auth/presentation/widgets/auth_row_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/background_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/container_button_widget.dart';
import 'package:host_group_chat/features/auth/presentation/pages/login_page.dart';
import 'package:host_group_chat/features/auth/presentation/widgets/text_field_input_widget.dart';

import '../../../../core/presentation/widgets/header_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 0,
                ),
                child: Column(
                  children: [
                    const HeaderWidget(
                      title: 'Password dimenticata',
                      fontSize: 32,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Niente paura!!! Inserisci il tuo indirizzo email e ${AppConst.appName} ti invierà un link per resettare la tua password.",
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFieldInputWidget(
                      controller: _emailController,
                      prefixIcon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Email",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ContainerButtonWidget(
                      text: "Invia Email di Reset Password",
                      fontSize: 18,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthRowWidget(
                      firstText: "Ricordi le informazioni dell'account? ",
                      secondText: "Login",
                      fontSize: 16,
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(PageConst.loginPageRouteName);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
