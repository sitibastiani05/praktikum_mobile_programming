import 'package:flutter/material.dart';

class PageBasicList extends StatelessWidget {
  const PageBasicList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materi Mobile Programming'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        children: <Widget>[
          // PERTEMUAN 1
          ExpansionTile(
            leading: const CircleAvatar(child: Text('1')),
            title: const Text('Pertemuan 1'),
            subtitle: const Text('Pengenalan Mobile Programming'),
            children: const [
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Pengenalan Mobile Programming'),
              ),
              ListTile(
                leading: Icon(Icons.phone_android),
                title: Text('Konsep Aplikasi Mobile'),
              ),
            ],
          ),

          // PERTEMUAN 2
          ExpansionTile(
            leading: const CircleAvatar(child: Text('2')),
            title: const Text('Pertemuan 2'),
            subtitle: const Text('Pengenalan Flutter'),
            children: const [
              ListTile(
                leading: Icon(Icons.flutter_dash),
                title: Text('Pengenalan Flutter'),
              ),
              ListTile(
                leading: Icon(Icons.code),
                title: Text('Struktur Project Flutter'),
              ),
            ],
          ),

          // PERTEMUAN 3
          ExpansionTile(
            leading: const CircleAvatar(child: Text('3')),
            title: const Text('Pertemuan 3'),
            subtitle: const Text('Dasar Bahasa Dart'),
            children: const [
              ListTile(
                leading: Icon(Icons.code),
                title: Text('Variabel dan Tipe Data'),
              ),
              ListTile(
                leading: Icon(Icons.functions),
                title: Text('Function pada Dart'),
              ),
            ],
          ),

          // PERTEMUAN 4
          ExpansionTile(
            leading: const CircleAvatar(child: Text('4')),
            title: const Text('Pertemuan 4'),
            subtitle: const Text('Widget Dasar Flutter'),
            children: const [
              ListTile(
                leading: Icon(Icons.widgets),
                title: Text('Text dan Icon'),
              ),
              ListTile(
                leading: Icon(Icons.smart_button),
                title: Text('Button dan Input'),
              ),
            ],
          ),

          // PERTEMUAN 5
          ExpansionTile(
            leading: const CircleAvatar(child: Text('5')),
            title: const Text('Pertemuan 5'),
            subtitle: const Text('Layout Flutter'),
            children: const [
              ListTile(
                leading: Icon(Icons.view_column),
                title: Text('Row dan Column'),
              ),
              ListTile(
                leading: Icon(Icons.crop_square),
                title: Text('Container'),
              ),
            ],
          ),

          // PERTEMUAN 6
          ExpansionTile(
            leading: const CircleAvatar(child: Text('6')),
            title: const Text('Pertemuan 6'),
            subtitle: const Text('Navigation'),
            children: const [
              ListTile(
                leading: Icon(Icons.navigation),
                title: Text('Navigasi Antar Halaman'),
              ),
              ListTile(
                leading: Icon(Icons.arrow_forward),
                title: Text('Route dan Navigator'),
              ),
            ],
          ),

          // PERTEMUAN 7
          ExpansionTile(
            leading: const CircleAvatar(child: Text('7')),
            title: const Text('Pertemuan 7'),
            subtitle: const Text('Form dan Input'),
            children: const [
              ListTile(leading: Icon(Icons.input), title: Text('TextField')),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text('Checkbox dan Radio Button'),
              ),
            ],
          ),

          // PERTEMUAN 8
          ExpansionTile(
            leading: const CircleAvatar(child: Text('8')),
            title: const Text('Pertemuan 8'),
            subtitle: const Text('List dan Grid'),
            children: const [
              ListTile(leading: Icon(Icons.list), title: Text('ListView')),
              ListTile(leading: Icon(Icons.grid_view), title: Text('GridView')),
            ],
          ),
        ],
      ),
    );
  }
}
