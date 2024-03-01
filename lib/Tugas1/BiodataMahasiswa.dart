import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiodataMahasiswa(),
    );
  }
}

class BiodataMahasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Mahasiswa'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/img/fotodiri.jpg'),
                  ),
                  SizedBox(height: 300.0),
                  Image.network(
                    'https://images.unsplash.com/photo-1600695580162-cb0fa319067a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YnVsYW58ZW58MHx8MHx8fDA%3D',
                    height: 100,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            _buildSectionWithColor(
              title: 'MAHASISWA',
              color: Colors.yellow,
              content: [
                Text('Nama: Bulan Marselia Wahyu Trisna'),
                Text('NIM: 187221100'),
              ],
            ),
            SizedBox(height: 16.0),
            _buildSectionWithColor(
              title: 'BIODATA',
              color: Colors.yellow,
              content: [
                Text('TTL: Gresik, 12 Maret'),
                Text('Asal: Gresik'),
                Text('Domisili: Sukolilo, Surabaya'),
                Text('Family: Anak ke 2 dari 1 bersaudara'),
              ],
            ),
            SizedBox(height: 16.0),
            _buildSectionWithColor(
              title: 'DESKRIPSI',
              color: Colors.yellow,
              content: [
                Text(
                  'Deskripsi: Mahasiswi program studi Sistem Informasi Universitas Airlangga angkatan tahun 2022 yang mempunyai ketertarikan dalam mempelajari ilmu komputer, manajemen, dan bisnis. Selain itu memiliki semangat dalam mencari ilmu, pengalaman, dan relasi.',
                ),
              ],
            ),
            SizedBox(height: 16.0),
            _buildSectionWithColor(
              title: 'HISTORI PENDIDIKAN',
              color: Colors.yellow,
              content: [
                Text(
                  'Histori Pendidikan:\n- TK Negeri Pembina\n- SD Negeri 2 Sukomulyo\n- SMP Negeri 1 Gresik\n- SMA Negeri 1 Gresik\n- Universitas Airlangga',
                ),
              ],
            ),
            SizedBox(height: 16.0),
            _buildSectionWithColor(
              title: 'CERITA TENTANG STUDI',
              color: Colors.yellow,
              content: [
                Text(
                  'Sebagai mahasiswa di SI UNAIR tahun ke dua saya telah mengikuti organisasi HIMSI, kepanitiaan, bootcamp',
                ),
              ],
            ),
            SizedBox(height: 16.0),
            _buildSectionWithColor(
              title: 'KEAHLIAN',
              color: Colors.yellow,
              content: [
                Text('- melukis'),
                Text('- design'),
                Text('- phyton'),
                Text('- java'),
                Text('- R'),
                Text('- html'),
                Text('- CSS'),
              ],
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
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          ...content,
        ],
      ),
    );
  }
}
