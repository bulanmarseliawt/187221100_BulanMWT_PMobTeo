import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Biodata',
//       theme: ThemeData(
//         primarySwatch: Colors.lightBlue,
//       ),
//       home: BiodataMahasiswa2(),
//     );
//   }
// }

class BiodataMahasiswa2 extends StatefulWidget {
  @override
  _BiodataMahasiswa2State createState() => _BiodataMahasiswa2State();
}

class _BiodataMahasiswa2State extends State<BiodataMahasiswa2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Biodata'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[Colors.green, Colors.yellow],
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Profil'),
              Tab(text: 'Gambar'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/img/fotodiri.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Bulan Marselia Wahyu Trisna',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'NIM: 187221100',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 32.0),
                    _buildSectionWithColor(
                      title: 'BIODATA',
                      color: Colors.yellow,
                      content: [
                        _buildDetailRow('TTL', 'Gresik, 12 Maret'),
                        _buildDetailRow('Asal', 'Gresik'),
                        _buildDetailRow('Domisili', 'Sukolilo, Surabaya'),
                        _buildDetailRow('Family', 'Anak ke 2 dari 1 bersaudara'),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    _buildSectionWithColor(
                      title: 'DESKRIPSI',
                      color: Colors.yellow,
                      content: [
                        Text(
                          'Mahasiswi program studi Sistem Informasi Universitas Airlangga angkatan tahun 2022 yang mempunyai ketertarikan dalam mempelajari ilmu komputer, manajemen, dan bisnis. Selain itu memiliki semangat dalam mencari ilmu, pengalaman, dan relasi.',
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    _buildSectionWithColor(
                      title: 'HISTORI PENDIDIKAN',
                      color: Colors.yellow,
                      content: [
                        Text(
                          'TK Negeri Pembina\nSD Negeri 2 Sukomulyo\nSMP Negeri 1 Gresik\nSMA Negeri 1 Gresik\nUniversitas Airlangga',
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    _buildSectionWithColor(
                      title: 'CERITA TENTANG STUDI',
                      color: Colors.yellow,
                      content: [
                        Text(
                          'Sebagai mahasiswa di SI UNAIR tahun ke dua saya telah mengikuti organisasi HIMSI, kepanitiaan, bootcamp.',
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    _buildSectionWithColor(
                      title: 'KEAHLIAN',
                      color: Colors.yellow,
                      content: [
                        Text('Melukis, Design, Phyton, Java, R, HTML, CSS'),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pesan singkat untuk saya',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1600695580162-cb0fa319067a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YnVsYW58ZW58MHx8MHx8fDA%3D',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text(
                        'Gambar di atas merupakan gambar bulan yang diambil dari internet',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionWithColor({
    required String title,
    required Color color,
    required List<Widget> content,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: color, width: 2.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: color),
          ),
          SizedBox(height: 8.0),
          ...content,
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            label + ': ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
