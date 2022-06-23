import 'package:flutter/material.dart';
import 'package:suka_healing/pages/home/home_page.dart';
import 'package:suka_healing/pages/home/profile_page.dart';
import 'package:suka_healing/theme.dart';

class MainPages extends StatefulWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget btnExplore() {
      return FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/chat-room'),
        child: Icon(Icons.comment_rounded),
        backgroundColor: primaryColor,
      );
    }

    Widget customNavbar() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: bgColor2,
            showSelectedLabels: false,
            currentIndex: selectedIndex,
            selectedItemColor: secondaryColor,
            unselectedItemColor: Colors.grey[500],
            onTap: (value) {
              print(value);
              setState(() {
                selectedIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    body() {
      switch (selectedIndex) {
        case 0:
          return const HomePage();
          break;
        case 1:
          return const ProfilePage();
          break;

        default:
      }
    }

    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: btnExplore(),
      body: body(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customNavbar(),
    );
  }
}
