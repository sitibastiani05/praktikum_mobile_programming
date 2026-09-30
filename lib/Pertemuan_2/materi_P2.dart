import 'package:flutter/material.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        Card(
          child: ListTile(
            leading: const Icon(
              Icons.flutter_dash,
              color: Colors.blueAccent,
              size: 35,
            ),
            title: const Text(
              "Pengenalan Flutter",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Mengenal Flutter dan kegunaannya."),
          ),
        ),

        Card(
          child: ListTile(
            leading: const Icon(Icons.code, color: Colors.blueAccent, size: 35),
            title: const Text(
              "Dasar-Dasar Dart",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Mempelajari bahasa pemrograman Dart."),
          ),
        ),

        Card(
          child: ListTile(
            leading: const Icon(
              Icons.widgets,
              color: Colors.blueAccent,
              size: 35,
            ),
            title: const Text(
              "Widget Flutter",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Mengenal widget dasar pada Flutter."),
          ),
        ),

        Card(
          child: ListTile(
            leading: const Icon(
              Icons.dashboard,
              color: Colors.blueAccent,
              size: 35,
            ),
            title: const Text(
              "Layout Flutter",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "Membuat tampilan menggunakan Row dan Column.",
            ),
          ),
        ),

        Card(
          child: ListTile(
            leading: const Icon(
              Icons.navigation,
              color: Colors.blueAccent,
              size: 35,
            ),
            title: const Text(
              "Navigation",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Membuat perpindahan antar halaman."),
          ),
        ),
      ],
    );
  }
}
