import 'package:flutter/material.dart';

class Nodua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/potosaya.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Nama: Dikry Nurahman',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              'NIM: 7020210039',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Alamat: Jl. Contoh No. 123',
              style: TextStyle(fontSize: 18),
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
