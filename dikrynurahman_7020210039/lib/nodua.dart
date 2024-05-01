import 'package:flutter/material.dart';

class Nodua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 187, 255),
        title: Text('Biodata'),
      ),
      backgroundColor: Color.fromARGB(255, 91, 187, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage('assets/images/potosaya.jpg'),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'DIKRY NURAHMAN',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '7020210039',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              buildListTile(
                  Icons.cake, 'Tempat, Tanggal Lahir', 'Ciamis, 11 Mei 2002'),
              buildListTile(Icons.location_on, 'Alamat',
                  'dsn.bentuksari, des. sukajaya, kec. Rajadesa, kab. Ciamis'),
              buildListTile(Icons.phone, 'No. Telepon', '081234567820'),
              buildListTile(Icons.email, 'Email', 'dikrynurahman49@gmail.com'),
              buildListTile(Icons.sports_soccer, 'Hobi', 'Merenung'),
              buildListTile(Icons.school, 'Pendidikan Terakhir',
                  'S1 SISTEM INFORMASI UNIVERSITAS GALUH'),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'kembali',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//pengaturan icon
  Widget buildListTile(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
