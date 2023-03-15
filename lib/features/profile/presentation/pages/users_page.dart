import 'package:flutter/material.dart';

import '../widgets/single_item_user_widget.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return SingleItemUserWidget(
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
