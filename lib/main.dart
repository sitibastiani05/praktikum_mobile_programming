import 'package:flutter/material.dart';
import 'package:praktikum_mp/Pertemuan_3/LatihanListView.dart';

import 'package:praktikum_mp/Pertemuan_2/home.dart';
import 'package:praktikum_mp/Pertemuan_2/materi.dart';
import 'package:praktikum_mp/Pertemuan_2/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Mobile Programming',
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    ListMateriPage(),
    ProfilePage(),
    PageBasicList(),
  ];

  final List<String> _titles = ["Home", "Materi", "Profile", "Basic List"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
      ),

      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Materi"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Basic List",
          ),
        ],
      ),
    );
  }
}
