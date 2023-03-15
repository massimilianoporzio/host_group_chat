import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:host_group_chat/core/presentation/theme/style.dart';

class InputMessageTextField extends StatefulWidget {
  const InputMessageTextField({super.key});

  @override
  State<InputMessageTextField> createState() => _InputMessageTextFieldState();
}

class _InputMessageTextFieldState extends State<InputMessageTextField> {
  TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    //*listeners
    _messageController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.4),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      blurRadius: 15,
                      spreadRadius: 4,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const FaIcon(
                      FontAwesomeIcons.solidLaughBeam,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Scrollbar(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          controller: _messageController,
                          maxLines: null,
                          decoration: const InputDecoration(
                              // hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                              hintText: "Scrivi un messaggio..."),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.attachment),
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.camera_alt),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(45),
            ),
            child:
                Icon(_messageController.text.isEmpty ? Icons.mic : Icons.send),
          )
        ],
      ),
    );
  }
}
