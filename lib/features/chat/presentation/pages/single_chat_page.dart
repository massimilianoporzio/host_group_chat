import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:host_group_chat/core/presentation/widgets/background_widget.dart';
import 'package:host_group_chat/features/chat/presentation/widgets/input_message_text_field.dart';
import 'package:host_group_chat/features/chat/presentation/widgets/list_messages_widget.dart';

class SingleChatPage extends StatelessWidget {
  const SingleChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black.withOpacity(0.3),
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Group name"),
      ),
      body: BackgroundWidget(
        backgroundColor: Colors.black,
        opacity: 0.25,
        imagePath: 'assets/images/backgroundDark.jpg',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListMessageWidget(),
            InputMessageTextField(),
          ],
        ),
      ),
    );
  }
}
