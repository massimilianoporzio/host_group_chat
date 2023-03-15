import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:host_group_chat/core/presentation/widgets/background_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/privacy_and_terms_widget.dart';

import '../../../../core/presentation/theme/style.dart';
import '../../../../core/presentation/widgets/container_button_widget.dart';
import '../../../../core/presentation/widgets/text_field_input_widget.dart';

class CreateNewGroupPage extends StatefulWidget {
  const CreateNewGroupPage({super.key});

  @override
  State<CreateNewGroupPage> createState() => _CreateNewGroupPageState();
}

class _CreateNewGroupPageState extends State<CreateNewGroupPage> {
  TextEditingController _groupNameController = TextEditingController();
  TextEditingController _groupNumOfUserController = TextEditingController();

  @override
  void dispose() {
    _groupNameController.dispose();
    _groupNumOfUserController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black.withOpacity(0.3),
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Crea un nuovo Gruppo"),
      ),
      body: BackgroundWidget(
        backgroundColor: Colors.black,
        imagePath: 'assets/images/loginBackground.jpg',
        opacity: 0.9,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 62,
                width: 62,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(62),
                ),
                child: const Text(
                  "foto",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Aggiungi foto del gruppo",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFieldInputWidget(
                controller: _groupNameController,
                hintText: "nome del gruppo",
                prefixIcon: Icons.group,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldInputWidget(
                controller: _groupNumOfUserController,
                keyboardType: TextInputType.number,
                hintText: "numero di utenti nel gruppo",
                prefixIcon: Icons.list_rounded,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: const Divider(
                  thickness: 1.5,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ContainerButtonWidget(text: "Crea un nuovo Gruppo*"),
              const SizedBox(
                height: 20,
              ),
              const PrivacyPolicyTermsWidget(
                testo: 'Crea un nuovo Gruppo',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
