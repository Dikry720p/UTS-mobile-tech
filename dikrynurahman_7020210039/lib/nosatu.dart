import 'package:flutter/material.dart';

class Nosatu extends StatefulWidget {
  @override
  _NosatuState createState() => _NosatuState();
}

class _NosatuState extends State<Nosatu> {
  final TextEditingController _kodeController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();

  List<DataRow> _rows = [];

  void _simpanData() {
    String kode = _kodeController.text;
    String nama = _namaController.text;
    String harga = _hargaController.text;

    setState(() {
      _rows.add(DataRow(cells: [
        DataCell(Text(kode)),
        DataCell(Text(nama)),
        DataCell(Text('Rp.$harga')),
      ]));
    });

    _kodeController.clear();
    _namaController.clear();
    _hargaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 187, 255),
        title: Text('Warung Abdul'),
      ),
      backgroundColor: Color.fromARGB(255, 91, 187, 255),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              'Input Barang :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              color: Colors.grey[50],
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Nama Karyawan: Dikry Nurahman \nNo. Karyawan  : 7020210039',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: _kodeController,
                      decoration: InputDecoration(labelText: 'Kode Barang'),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: _namaController,
                      decoration: InputDecoration(labelText: 'Nama Barang'),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller: _hargaController,
                      decoration: InputDecoration(labelText: 'Harga Barang'),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          onPressed: _simpanData,
                          child: Text(
                            'Simpan',
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.yellow),
                          onPressed: () {
                            _kodeController.clear();
                            _namaController.clear();
                            _hargaController.clear();
                          },
                          child: Text(
                            'Batal',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Data Barang :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 12),
              color: Colors.grey[50],
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Kode')),
                  DataColumn(label: Text('Nama')),
                  DataColumn(label: Text('Harga')),
                ],
                rows: _rows,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                Navigator.pushNamed(context, '/nodua');
              },
              child: Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
