import 'package:flutter/material.dart';
import 'package:praktikum_mp/Pertemuan_3/LatihanListView.dart'; // PageBasicList
import 'package:praktikum_mp/Pertemuan_4/ToastAlert.dart';

class ListMateriPage extends StatelessWidget {
  const ListMateriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Pertemuan')),
      // body: ListView.builder(
      //   itemCount: 14, // 14 pertemuan dalam satu semester
      //   itemBuilder: (context, index) {
      //     final pertemuanKe = index + 1;
      //     return ListTile(
      //       title: Text('Pertemuan ke-$pertemuanKe'),
      //       trailing: const Icon(Icons.arrow_forward_ios),
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => _getPageByPertemuan(pertemuanKe),
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: 14, // 14 pertemuan dalam satu semester
        itemBuilder: (context, index) {
          final pertemuanKe = index + 1;

          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(16),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _getPageByPertemuan(pertemuanKe),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF6C63FF), Color(0xFF4834D4)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '$pertemuanKe',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pertemuan ke-$pertemuanKe',
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2D2D2D),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              pertemuanKe <= 7 ? 'Sebelum UTS' : 'Setelah UTS',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Menentukan halaman tujuan berdasarkan nomor pertemuan
  Widget _getPageByPertemuan(int pertemuanKe) {
    switch (pertemuanKe) {
      case 1:
        return const PageBasicList();
      case 2:
        return const PageToastAlert();
      default:
        return DetailPertemuanPage(pertemuanKe: pertemuanKe);
    }
  }
}

class DetailPertemuanPage extends StatelessWidget {
  final int pertemuanKe;

  const DetailPertemuanPage({super.key, required this.pertemuanKe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pertemuan ke-$pertemuanKe')),
      body: Center(child: Text('Isi materi untuk pertemuan ke-$pertemuanKe')),
    );
  }
}
