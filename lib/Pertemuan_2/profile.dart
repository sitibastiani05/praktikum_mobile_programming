import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 20),

          const CircleAvatar(
            radius: 55,
            backgroundColor: Colors.blueAccent,
            child: Icon(Icons.person, size: 65, color: Colors.white),
          ),

          const SizedBox(height: 15),

          const Text(
            "Siti Bastiani",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 5),

          const Text(
            "Sistem Informasi",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),

          const SizedBox(height: 30),

          _profileItem(Icons.person, "Nama", "Siti Bastiani"),

          _profileItem(Icons.badge, "NIM", "241011750084"),

          _profileItem(Icons.school, "Program Studi", "Sistem Informasi"),

          _profileItem(Icons.book, "Mata Kuliah", "Mobile Programming"),

          _profileItem(Icons.email, "Email", "sitibastiani@gmail.com"),
        ],
      ),
    );
  }

  Widget _profileItem(IconData icon, String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent, size: 28),

          const SizedBox(width: 15),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),

              const SizedBox(height: 3),

              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
