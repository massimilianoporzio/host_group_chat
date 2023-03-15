import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:host_group_chat/core/constants.dart';

import '../widgets/single_item_group_widget.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.9),
        child: const Icon(
          AntDesign.addusergroup,
          size: 28,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(PageConst.createNewGroupRouteName);
        },
      ),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SingleItemGroupWidget(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(PageConst.singleChatRouteName);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
