import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:whats_flutter/screens/contacts_tab_screen/contacts_tab_screen.dart';
import 'package:whats_flutter/screens/home_screen/home_screen.dart';
import 'package:whats_flutter/screens/talks_tab_screen/talks_tab_screen.dart';
import 'package:whats_flutter/stores/main_store.dart';
import 'package:whats_flutter/utils/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final mainStore = MainStore();
  final itemsMenu = ["Settings", "Signout"];

  @override
  void initState() {
    super.initState();

    when(
      (_) => !mainStore.isUserLogged,
      () {
        Future.delayed(Duration.zero, () {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(HOME_ROUTE_KEY, (_) => false);
        });
      },
    );

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 4,
          labelStyle: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          tabs: const [
            Tab(
              text: 'Talks',
            ),
            Tab(
              text: 'Contacts',
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            onSelected: _chooseMenuItem,
            itemBuilder: (_) => itemsMenu
                .map(
                  (item) => PopupMenuItem(
                    value: item,
                    child: Text(
                      item,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TalksTabScreen(),
          ContactsTabScreen(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  _chooseMenuItem(String chosenItem) {
    switch (chosenItem) {
      case 'Settings':
        break;

      case 'Signout':
        mainStore.signoutUser();
        break;

      default:
    }
  }
}
