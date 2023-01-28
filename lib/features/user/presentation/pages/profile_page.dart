import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:host_group_chat/core/constants.dart';
import 'package:host_group_chat/core/presentation/theme/style.dart';
import 'package:host_group_chat/core/presentation/widgets/background_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/container_button_widget.dart';
import 'package:host_group_chat/core/presentation/widgets/text_field_input_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();

  bool _direction = false;
  bool _fabVisible = false;
  ScrollController scrollViewColtroller = ScrollController();

  @override
  void initState() {
    scrollViewColtroller = ScrollController();
    scrollViewColtroller.addListener(_scrollListener);
    _fabVisible = WidgetsBinding.instance.window.physicalSize.height <= 800;
    super.initState();
  }

  _scrollListener() {
    if (scrollViewColtroller.offset >=
            scrollViewColtroller.position.maxScrollExtent &&
        !scrollViewColtroller.position.outOfRange) {
      setState(() {
        //* raggiunto il fondo
        _direction = true;
      });
    }
    if (scrollViewColtroller.offset <=
            scrollViewColtroller.position.minScrollExtent &&
        !scrollViewColtroller.position.outOfRange) {
      setState(() {
        //*raggiunta la cima
        _direction = false;
      });
    }
  }

  _moveUp() {
    scrollViewColtroller.animateTo(scrollViewColtroller.offset - 200,
        curve: Curves.linear, duration: Duration(milliseconds: 200));
  }

  _moveDown() {
    scrollViewColtroller.animateTo(scrollViewColtroller.offset + 150,
        curve: Curves.linear, duration: Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _statusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
        visible: _fabVisible,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Visibility(
              visible: _direction,
              maintainSize: false,
              child: FloatingActionButton(
                backgroundColor:
                    Theme.of(context).colorScheme.onPrimary.withOpacity(0.6),
                onPressed: () {
                  _moveUp();
                },
                child: RotatedBox(
                    quarterTurns: 1, child: Icon(Icons.chevron_left)),
              ),
            ),
            Visibility(
              maintainSize: false,
              visible: !_direction,
              child: FloatingActionButton(
                backgroundColor: primaryColor.withOpacity(0.6),
                onPressed: () {
                  _moveDown();
                },
                child: RotatedBox(
                    quarterTurns: 3, child: Icon(Icons.chevron_left)),
              ),
            )
          ],
        ),
      ),
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollViewColtroller.position.userScrollDirection ==
              ScrollDirection.reverse) {
            setState(() {
              _direction = true;
            });
          } else {
            if (scrollViewColtroller.position.userScrollDirection ==
                ScrollDirection.forward) {
              setState(() {
                _direction = false;
              });
            }
          }
          return true;
        },
        child: BackgroundWidget(
          backgroundColor: Colors.black,
          imagePath: 'assets/images/loginBackground.jpg',
          opacity: 0.9,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              controller: scrollViewColtroller,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(62),
                    ),
                    child: Text(
                      "foto",
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rimuovi foto",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFieldInputWidget(
                    controller: _nameController,
                    hintText: "nome",
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldInputWidget(
                    controller: _emailController,
                    hintText: "email",
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldInputWidget(
                    controller: _statusController,
                    hintText: "stato",
                    prefixIcon: Zocial.statusnet,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.white70,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ContainerButtonWidget(text: "Aggiorna il Profilo")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
