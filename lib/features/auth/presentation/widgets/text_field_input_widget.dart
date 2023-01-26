import 'package:flutter/material.dart';
import 'package:host_group_chat/core/presentation/theme/style.dart';

class TextFieldInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final String? hintText;
  final double? height;
  final double? fontSize;

  const TextFieldInputWidget({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.hintText,
    this.height = 50,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: height,
      decoration: BoxDecoration(
        color: color747480.withOpacity(.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          keyboardType: keyboardType,
          controller: controller,
          style: TextStyle(color: Colors.white, fontSize: fontSize),
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: fontSize),
            border: InputBorder.none,
            hintText: hintText,
            prefixIcon: Icon(
              prefixIcon,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
