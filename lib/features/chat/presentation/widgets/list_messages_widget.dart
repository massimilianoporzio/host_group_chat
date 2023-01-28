import 'package:flutter/material.dart';

class ListMessageWidget extends StatelessWidget {
  const ListMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Text(
            "ciao",
            style: const TextStyle(color: Colors.white),
          );
        },
      ),
    );
  }
}
