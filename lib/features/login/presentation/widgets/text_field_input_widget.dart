import 'package:flutter/material.dart';
import 'package:host_group_chat/core/presentation/theme/style.dart';

class TextFieldInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final String? hintText;

  const TextFieldInputWidget({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        color: color747480.withOpacity(.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        keyboardType: keyboardType,
        controller: controller,
        style: const TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(
            prefixIcon,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
