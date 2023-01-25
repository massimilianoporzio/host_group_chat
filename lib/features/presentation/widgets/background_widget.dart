import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final String? imagePath;
  final double? opacity;
  final Color backgroundColor;
  final Widget child;

  const BackgroundWidget({
    super.key,
    this.imagePath,
    this.opacity,
    required this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 1,
          child: Container(
            decoration: BoxDecoration(
              image: imagePath != null
                  ? DecorationImage(
                      image: AssetImage(imagePath!),
                      fit: BoxFit.fill,
                    )
                  : null,
            ),
          ),
        ),
        Container(color: backgroundColor.withOpacity(opacity ?? 1)),
        child,
      ],
    );
  }
}
