import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.phone_android, color: Colors.white, size: 45),
                SizedBox(height: 15),
                Text(
                  "Selamat Datang!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Praktikum Mobile Programming",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Tentang Praktikum",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const Text(
            "Aplikasi ini digunakan untuk mempelajari dasar-dasar "
            "pengembangan aplikasi mobile menggunakan Flutter.",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),

          const SizedBox(height: 25),

          const Text(
            "Materi Pembelajaran",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 15),

          Row(
            children: [
              Expanded(
                child: _materiCard(Icons.widgets, "Widget", "Dasar Flutter"),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _materiCard(
                  Icons.design_services,
                  "UI Design",
                  "Membuat tampilan",
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: _materiCard(Icons.code, "Coding", "Pemrograman Dart"),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _materiCard(
                  Icons.phone_android,
                  "Mobile App",
                  "Aplikasi mobile",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _materiCard(IconData icon, String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 35, color: Colors.blueAccent),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
