import 'package:flutter/material.dart';

class Nosatu extends StatefulWidget {
  @override
  _NosatuState createState() => _NosatuState();
}

class _NosatuState extends State<Nosatu> {
  final TextEditingController _kodeController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();

  List<DataRow> _rows = []; // menyimpan baris-baris data

  void _simpanData() {
    String kode = _kodeController.text;
    String nama = _namaController.text;
    String harga = _hargaController.text;

    setState(() {
      _rows.add(DataRow(cells: [
        DataCell(Text(kode)),
        DataCell(Text(nama)),
        DataCell(Text('Rp.$harga')),
        DataCell(
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              setState(() {
                _rows.removeWhere(
                    (row) => row.cells[0].child.toString() == kode);
              });
            },
          ),
        ),
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
        title: Text('Input Barang'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Nama Karyawan: Dikry Nurahman \n No. Karyawan  : 7020210039',
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
                    onPressed: _simpanData,
                    child: Text('Simpan'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _kodeController.clear();
                      _namaController.clear();
                      _hargaController.clear();
                    },
                    child: Text('Batal'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Data Barang',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              DataTable(
                columns: [
                  DataColumn(label: Text('Kode')),
                  DataColumn(label: Text('Nama')),
                  DataColumn(label: Text('Harga')),
                  DataColumn(label: Text('Aksi')),
                ],
                rows: _rows,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/nodua');
                },
                child: Text('Tampilkan Nodua'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
