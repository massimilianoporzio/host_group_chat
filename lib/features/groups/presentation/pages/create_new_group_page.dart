import 'package:flutter/material.dart';
import 'package:host_group_chat/core/presentation/widgets/background_widget.dart';

class CreateNewGroupPage extends StatelessWidget {
  const CreateNewGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Crea un nuovo Gruppo"),
      ),
      body: BackgroundWidget(
        backgroundColor: Colors.black,
        imagePath: 'assets/images/loginBackground.jpg',
        opacity: 0.9,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
