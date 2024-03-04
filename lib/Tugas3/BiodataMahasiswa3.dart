import 'package:flutter/material.dart';

class BiodataMahasiswa3 extends StatefulWidget {
  @override
  _BiodataMahasiswa3State createState() => _BiodataMahasiswa3State();
}

class _BiodataMahasiswa3State extends State<BiodataMahasiswa3> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
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
            isScrollable: true,
            tabs: [
              Tab(text: 'Biodata'),
              Tab(text: 'Deskripsi'),
              Tab(text: 'History Pendidikan'),
              Tab(text: 'Cerita Tentang Studi'),
              Tab(text: 'Gambar'),
              Tab(text: 'Keahlian'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: <Color>[Colors.green, Colors.yellow],
                  ),
                ),
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Tambahkan kode navigasi ke halaman utama di sini
                },
              ),
              ListTile(
                title: Text('Log Out'),
                onTap: () {
                  // Tambahkan kode untuk logout di sini
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
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
                ],
              ),
            ),
            SingleChildScrollView(
              child: _buildSectionWithColor(
                title: 'Deskripsi',
                color: Colors.yellow,
                content: [
                  Text(
                    'Mahasiswi program studi Sistem Informasi Universitas Airlangga angkatan tahun 2022 yang mempunyai ketertarikan dalam mempelajari ilmu komputer, manajemen, dan bisnis. Selain itu memiliki semangat dalam mencari ilmu, pengalaman, dan relasi.',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: _buildSectionWithColor(
                title: 'History Pendidikan',
                color: Colors.yellow,
                content: [
                  Text(
                    'TK Negeri Pembina\nSD Negeri 2 Sukomulyo\nSMP Negeri 1 Gresik\nSMA Negeri 1 Gresik\nUniversitas Airlangga',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: _buildSectionWithColor(
                title: 'Cerita Tentang Studi',
                color: Colors.yellow,
                content: [
                  Text(
                    'Sebagai mahasiswa di SI UNAIR tahun ke dua saya telah mengikuti organisasi HIMSI, kepanitiaan, bootcamp.',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
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
            SingleChildScrollView(
              child: _buildSectionWithColor(
                title: 'Keahlian',
                color: Colors.yellow,
                content: [
                  Text(
                    'Melukis, Design, Phyton, Java, R, HTML, CSS',
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.yellow,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Pendidikan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.brush),
              label: 'Keahlian',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo),
              label: 'Foto',
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
