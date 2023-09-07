import 'package:flutter/material.dart';
import 'package:flutter_ewallet/pages/account_page.dart';
import 'package:flutter_ewallet/pages/contact_page.dart';
import 'package:flutter_ewallet/pages/home_page.dart';
import 'package:flutter_ewallet/pages/statistic_page.dart';
import 'package:flutter_ewallet/utils/theme.dart';

import '../widgets/svg_icon.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List pages = const [
    HomePage(),
    StatisticPage(),
    ContactPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        surfaceTintColor: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 8.0,
        child: NavigationBarTheme(
          data: const NavigationBarThemeData(
            indicatorColor: whiteColor,
            surfaceTintColor: whiteColor,
          ),
          child: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            backgroundColor: whiteColor,
            selectedIndex: currentIndex,
            destinations: const [
              NavigationDestination(
                selectedIcon: SvgIcon(
                  "Home",
                  color: primaryColor,
                ),
                icon: SvgIcon(
                  "Home",
                  color: Colors.grey,
                ),
                label: "Home",
              ),
              NavigationDestination(
                selectedIcon: SvgIcon(
                  "chart",
                  color: primaryColor,
                ),
                icon: SvgIcon(
                  "chart",
                  color: Colors.grey,
                ),
                label: "Statistic",
              ),
              NavigationDestination(
                selectedIcon: SvgIcon(
                  "tag-user",
                  color: primaryColor,
                ),
                icon: SvgIcon(
                  "tag-user",
                  color: Colors.grey,
                ),
                label: "Contact",
              ),
              NavigationDestination(
                selectedIcon: SvgIcon(
                  "account",
                  color: primaryColor,
                ),
                icon: SvgIcon(
                  "account",
                  color: Colors.grey,
                ),
                label: "Account",
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: const SvgIcon(
          "scan",
          color: whiteColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
