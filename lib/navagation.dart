import 'package:flutter/material.dart';
import 'package:softwarica/about.dart';
import 'package:softwarica/addstudent.dart';
import 'package:softwarica/homepage.dart';

class NavgationBar extends StatefulWidget {
  const NavgationBar({Key? key}) : super(key: key);

  @override
  State<NavgationBar> createState() => _NavgationBarState();
}

class _NavgationBarState extends State<NavgationBar> {
  int _selectedIndex = 0;
  List<Widget> lstWidget = [
    const Homepage(),
    const AddStudent(),
    const AboutUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: lstWidget[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Add Student'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_sharp), label: 'About Us'),
        ],
        backgroundColor: const Color.fromARGB(255, 38, 210, 144),
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color.fromARGB(255, 24, 24, 24),
        elevation: 10,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
