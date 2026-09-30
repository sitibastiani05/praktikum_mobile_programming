import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastAlertPage extends StatelessWidget {
  const new({super.key});

  void tampilkanToast(String pesan) {
    Fluttertoast.showToast(
      msg: pesan,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP_RIGHT,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.black26,
      textColor: Colors.white38,
      fontSize: 14.0,
    );
  }

  // Methode untuk menampilkan Alert Dialog
  void tampilkanAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Contoh Alert"),
          content: Text(
            "Ini adalah pesan yang ditampilkan menggunakan Alert Dialog!",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tampilkan Toast")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => tampilkanToast("Ini adalah pesan Toast!"),
              child: Text("Tampilkan Toast"),
            ),
            ElevatedButton(
              onPressed: () => tampilkanAlert(context),
              child: Text("Tampilkan Alert"),
            ),
          ],
        ),
      ),
    );
  }
}
