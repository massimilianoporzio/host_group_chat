import 'package:flutter/material.dart';
import 'package:host_group_chat/core/presentation/theme/style.dart';

typedef ToolbarIndexController = Function(int index);

class CustomToolBarWidget extends StatelessWidget {
  final ToolbarIndexController toolbarIndexController;
  final int? pageIndex;

  const CustomToolBarWidget(
      {super.key, required this.toolbarIndexController, this.pageIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(color: Palette.kToDark),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Expanded(
          child: ToolBarItem(
            title: "Gruppi",
            borderColor: pageIndex == 0 ? Colors.white : Colors.transparent,
            textColor: pageIndex == 0 ? Colors.white : Colors.black,
            onTap: () {
              toolbarIndexController(0);
            },
          ),
        ),
        Expanded(
          child: ToolBarItem(
            title: "Utenti",
            borderColor: pageIndex == 1 ? Colors.white : Colors.transparent,
            textColor: pageIndex == 1 ? Colors.white : Colors.black,
            onTap: () {
              toolbarIndexController(1);
            },
          ),
        ),
        Expanded(
          child: ToolBarItem(
            title: "Profilo",
            borderColor: pageIndex == 2 ? Colors.white : Colors.transparent,
            textColor: pageIndex == 2 ? Colors.white : Colors.black,
            onTap: () {
              toolbarIndexController(2);
            },
          ),
        ),
      ]),
    );
  }
}

class ToolBarItem extends StatelessWidget {
  final String title;
  final Color? textColor;
  final Color? borderColor;
  final double? borderWith;
  final VoidCallback? onTap;

  const ToolBarItem({
    super.key,
    required this.title,
    this.textColor = Colors.black,
    this.borderWith = 2,
    this.onTap,
    this.borderColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: borderColor!, width: borderWith!),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
