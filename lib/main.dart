import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Fakultas Teknik'),
                accountEmail: Text('fakultasteknkk@unsur.ac.id'),
                decoration: BoxDecoration(
                  color: Color(0xFF6CA8F1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Sambutan Dekan '),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext _) => PageSambutan()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Sejarah '),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext _) => PageSejarah()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Struktur Pimpinan Fakultas '),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext _) => StrukturFakultas()));
                },
              ),
              Divider(
                height: 2.0,
              ),
            ],
          )),
      appBar: AppBar(
        title: Text(
          'PROFILE',
          textAlign: TextAlign.center,
          // style: TextStyle(color: Colors.black87),
        ),
        // backgroundColor: Colors.white,
      ),
      body: PageHome(),
    );
  }
}

//home
class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.blueAccent])),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "http://alumni.ft.unsur.ac.id/assets/img/logo_ft.png",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Fakultas Teknik",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Mhs",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "500",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blueAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Alumi",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "8.000",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Dosen",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "30",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bio :",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontStyle: FontStyle.italic,
                        fontSize: 28.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'fakultas Teknik Universitas Suryakancana Menyelenggarakaan Program Pendidikan Strata-1(S1) Program Studi Teknik Sipil, Teknik Industri dan Teknik Informatika.\n',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,
            child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext _) => PageContact()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.blueAccent, Colors.blue]),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Contact me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

//sejarah
class PageSejarah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'SEJARAH',
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text('SEJARAH FAKULTAS TEKNIK',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
                'Fakultas Teknik merupakan salah satu fakultas yang ada di lingkungan Universitas Suryakancana Cianjur, terletak di Jalan Pasir Gede Raya Cianjur, yang didirikan berdasarkan Surat Keputusan Mendiknas RI No. 100/D/O/2001 tanggal 2 Agustus 2001 di Cianjur dan merupakan gabungan dari dua fakultas yaitu Fakultas Teknik Sipil dan Perencanaan dan Fakultas Teknologi Industri, sebagaimana dituangkan dalam Surat Keputusan Rektor No. 09/SK/SN/UNSUR/IX/2003 tanggal 27 Agustus 2003.\n\n'
                'Fakultas Teknik Universitas Suryakancana Cianjur saat ini memiliki 3 (tiga) Jurusan yaitu Teknik Informatika, Teknik Industri, dan Teknik Sipil. Kehadiran Jurusan-Jurusan yang ada di Fakultas Teknik Universitas Suryakancana Cianjur, diharapkan dapat mempersiapkan kebutuhan tenaga-tenaga profesional di Kabupaten Cianjur dalam pengembangan dan pembangunan bidang teknologi di tingkat regional maupun nasional. Berkaitan dengan adanya kebijakan otonomi daerah yang secara tidak langsung menuntut para lulusan Fakultas Teknik untuk menguasai kondisi daerah dan mampu meningkatkan efisiensi pembangunan serta siap melakukan percepatan pembangunan secara terintegrasi dan berkelanjutan. Dengan demikian akan memberikan peluang kerja bagi lulusan Fakultas Teknik dalam mengembangakan dan meningkatkan pembangunan Jawa Barat khususnya Kabupaten Cianjur.',
                style: TextStyle(fontSize: 16)),
          ),
        ]));
  }
}

class PageSambutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'SAMBUTAN',
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Sambutan Dekan',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
                'Selamat datang di website Fakultas Teknik Universitas Suryakancana (FT-UNSUR). Fuji syukur kami panjatkan kehadirat Allah SWT atas kuasanya kami dapat merealisasikan website Fakultas Teknik Universitas Suryakancana.\n\n'
                'Fakultas Teknik merupakan salah satu fakultas di Universitas Suryakancana yang menyelenggarakan 3 program studi berjenjang Sarjana (S1) yang terdiri dari Program Studi Teknik Industri, Program Studi Teknik Sipil dan Program Studi Teknik Informatika. Ketiga Program Studi tersebut telah terakreditasi Badan Akreditasi Nasional (BAN-PT).\n\n'
                'Website ini menyediakan berbagai macam informasi mengenai Fakultas Teknik termasuk profil fakultas, program studi, akademik, kurikulum, aktivitas penelitian, publikasi ilmiah, kemahasiswaan, perpustakaan, alumni, serta berbagai informasi dan pelayanan akademik lainnya. Website ini diharapkan dapat memberikan layanan informasi serta layanan akademik secara online bagi mahasiswa, dosen dan masyarakat luas sehingga informasi dan layanan akademik di Fakultas Teknik mudah diakses oleh semua pihak.\n\n'
                'Para pengunjung website yang kami hormati, website ini akan terus kami kembangkan seiring dengan kemajuan teknologi informasi agar memberikan tampilan yang lebih komprehensif dan berguna bagi semua pihak yang membutuhkan.\n\n\n\n'
                'Cianjur, September 2019\n'
                'Dekan,\n\n\n'
                'H. Widy Setyawan, Ir., MT.\n\n',
                style: TextStyle(fontSize: 16)),
          ),
        ]));
  }
}

//struktur
class StrukturFakultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'STRUKTUR',
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Struktur Pimpinan Fakultas',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          GFCard(
            boxFit: BoxFit.cover,
            title: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('assets/gambar/Dekan.png'),
              ),
              title: Text('Dekan\n'),
              subTitle: Text('Nama: H. Widy Setyawan, Ir., MT.\n\n'
                  'NIK/NIDN: 4103005015/0406016605\n\n'
                  'Email : widyft@unsur.ac.id\n\n'
                  'Telp/HP : 083107113661'),
            ),
          ),
        ]));
  }
}

//contact
class PageContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CONTACT',
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(children: <Widget>[
          GFCard(
            boxFit: BoxFit.cover,
            title: GFListTile(
              subTitle: Text('Call us : (0263) 283578\n\n'
                  'Email Us : info@ftunsur.ac.id\n\n'
                  'Telp/HP : 083107113661'),
            ),
          ),
        ]));
  }
}
