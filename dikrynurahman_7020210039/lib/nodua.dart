import 'package:flutter/material.dart';

class Nodua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/potosaya.jpg'),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                'Nama',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Dikry Nurahman',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              title: Text(
                'Tempat, Tanggal Lahir',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Ciamis, 21 Juli 2004',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              title: Text(
                'Alamat',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Jl. Bojong RT 06/RW 06, Desa Sukajaya, Kec. Rajadesa, Kab. Ciamis',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              title: Text(
                'No. Telepon',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '0822300270201',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              title: Text(
                'Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'dikrynurahman@gmail.com',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              title: Text(
                'Pendidikan Terakhir',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'S1 Sistem Informasi',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
