import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:host_group_chat/features/presentation/widgets/theme/style.dart';

class TextFieldPasswordWidget extends StatefulWidget {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;

  const TextFieldPasswordWidget({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.suffixIcon,
  });

  @override
  State<TextFieldPasswordWidget> createState() =>
      _TextFieldPasswordWidgetState();
}

class _TextFieldPasswordWidgetState extends State<TextFieldPasswordWidget> {
  bool _isTextObscured = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: color747480.withOpacity(.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: _isTextObscured,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        style: const TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            widget.prefixIcon,
            color: Theme.of(context).primaryColor,
          ),
          suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  _isTextObscured = !_isTextObscured;
                });
              },
              child: Icon(
                _isTextObscured
                    ? Icons.visibility
                    : MaterialIcons.visibility_off,
                color: Theme.of(context).primaryColor,
              )),
        ),
      ),
    );
  }
}
