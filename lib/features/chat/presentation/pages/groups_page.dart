import 'package:flutter/material.dart';
import 'package:host_group_chat/core/constants.dart';
import 'package:host_group_chat/features/chat/presentation/widgets/single_item_group_widget.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

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
                return SingleItemGroupWidget(
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
