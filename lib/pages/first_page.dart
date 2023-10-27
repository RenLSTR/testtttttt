import 'package:app_ren/pages/home_page.dart';
import 'package:app_ren/pages/profile_page.dart';
import 'package:app_ren/pages/settings_page.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const HomePage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Городские аптеки"),
        backgroundColor: Colors.blueGrey[300],
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.medical_services,
                size: 60,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepages');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspages');
              },
            ),
          ],
        ),
      ),

      // bottomNavigationBar: NavigationBar(
      //   destinations: [
      //     const NavigationDestination(
      //         icon: Icon(Icons.home), label: "Главная"),
      //     const NavigationDestination(
      //         icon: Icon(Icons.list), label: "Каталог"),
      //     const NavigationDestination(
      //         icon: Icon(Icons.shopping_cart), label: "Корзина"),
      //     const NavigationDestination(
      //         icon: Icon(Icons.account_box), label: "Профиль"),
      //   ],
      //   selectedIndex: _selectedIndex,
      // ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Главная",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
