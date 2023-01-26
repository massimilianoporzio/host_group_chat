import 'package:flutter/material.dart';

class ContainerButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final double? fontSize;

  const ContainerButtonWidget({
    super.key,
    required this.text,
    this.onTap,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
