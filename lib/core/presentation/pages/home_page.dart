import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:host_group_chat/core/constants.dart';
import 'package:host_group_chat/core/presentation/theme/style.dart';
import 'package:host_group_chat/core/presentation/widgets/background_widget.dart';
import 'package:host_group_chat/features/groups/presentation/pages/groups_page.dart';
import 'package:host_group_chat/features/user/presentation/pages/users_page.dart';
import 'package:host_group_chat/features/chat/presentation/widgets/custom_toolbar_widget.dart';
import 'package:host_group_chat/features/user/presentation/pages/profile_page.dart';

import '../widgets/text_field_input_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final PageController _pageViewController = PageController(initialPage: 0);

  bool _isSearch = false;
  int _currentToolbarPageIndex = 0;

  List<String> _popupMenuList = ["Logout"];
  List<Widget> get pages => const [GroupsPage(), UsersPage(), ProfilePage()];

  @override
  void dispose() {
    _searchController.dispose();
    _pageViewController.dispose();
    super.dispose();
  }

  Widget _buildSearchWidget() {
    return Container(
      margin:
          EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top * 1.05),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).viewPadding.top * 0.8,
      decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2,
            spreadRadius: 5,
            offset: const Offset(0, 3))
      ]),
      child: TextFieldInputWidget(
        backgroundColor: Colors.white.withOpacity(0.5),
        controller: _searchController,
        prefixIcon: Icons.arrow_back,
        borderRadius: 10.0,
        hintText: "Search...",
        hintColor: Colors.white,
        keyboardType: TextInputType.text,
        iconClickEvent: () {
          setState(() {
            _isSearch = !_isSearch;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black.withOpacity(0.3),
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
        elevation: 0.0,
        titleTextStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        backgroundColor: _isSearch ? Palette.kToDark : Palette.kToDark,
        foregroundColor: Colors.white,
        title: _isSearch ? const SizedBox() : const Text(AppConst.appName),
        flexibleSpace: _isSearch ? _buildSearchWidget() : const SizedBox(),
        actions: _isSearch
            ? []
            : [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isSearch = !_isSearch;
                    });
                  },
                  child: const Icon(Icons.search),
                ),
                PopupMenuButton(
                    color: Colors.white.withOpacity(0.75),
                    itemBuilder: (context) => _popupMenuList.map((menuItem) {
                          return PopupMenuItem(
                              child: Text(
                            menuItem,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ));
                        }).toList()),
                const SizedBox(
                  width: 0,
                )
              ],
      ),
      body: BackgroundWidget(
        backgroundColor: Colors.black,
        imagePath: 'assets/images/loginBackground.jpg',
        opacity: 0.9,
        child: Column(
          children: [
            _isSearch
                ? const SizedBox()
                : CustomToolBarWidget(
                    pageIndex: _currentToolbarPageIndex,
                    toolbarIndexController: (index) {
                      print("Current page index is $index.");
                      setState(() {
                        _currentToolbarPageIndex = index;
                      });
                      _pageViewController.jumpToPage(index);
                    },
                  ),
            Expanded(
              child: PageView.builder(
                controller: _pageViewController,
                onPageChanged: (index) {
                  setState(() {
                    _currentToolbarPageIndex = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return pages[index];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
