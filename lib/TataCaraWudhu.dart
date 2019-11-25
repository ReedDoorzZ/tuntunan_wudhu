import 'package:flutter/material.dart';

void main() => runApp(TataCaraWudhu());

class TataCaraWudhu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Syaratsah Wudhu"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageSyarat("Niat Wudhu",
              "Tentunya sebelum berwudhu kamu diharuskan untuk berniat terlebih dahulu. Niat dalam berwudhu ini diartikan sebagai kesungguhan hati untuk berwudhu karena melaksanakan perintah Allah SWT dan mengikuti ajaran dari Rasulullah SAW."),
          _createPageSyarat("Membaca Basmallah",
              "Setelah melakukan niat dengan kesungguhan hati, kemudian bacalah basmallah. Membaca basmallah ini dilakukan sambil mencuci kedua telapak tangan sebanyak 3 kali hingga ke sela-sela jari. Namun bila lupa untuk membaca basmallah, maka wudhu yang kamu lakukan tetap sah."),
          _createPageSyarat("Berkumur Kumur",
              "Berkumur-kumur sebanyak 3 kali atau memutar air dalam mulut dan mengeluarkannya serta membersihkan gigi dari sisa-sisa makanan yang ada pada gigi."),
          _createPageSyarat("Mencuci lubang hidung",
              "Mencuci lubang hidung sebanyak 3 kali untuk mengeluarkan kotoran yang ada di dalamnya. Dan disunnahkan pula muncuci lubang hidung dengan cara menghirup air dalam sekali hirup serta mengeluarkannya dengan memencet hidung."),
          _createPageSyarat("Mencuci Basuh Wajah 3 kali",
              "Mencuci muka 3 kali pada saat berwudhu sebaiknya dilakukan mulai dari ujung kepala tumbuhnya rambut hingga bawah dagu. Serta membersihkan dari telinga kanan ke telinga kiri."),
          _createPageSyarat("Mencuci kedua belah tangan hingga siku",
              "Setelah mencuci muka, kemudian cucilah kedua belah tangan hingga siku sebanyak 3 kali. Sebaiknya lakukan dengan mendahulukan anggota tubuh bagian kanan, membasahi tangan hingga siku pun sudah tercantum dalam surat Al- Maidah ayat 6 sesuai dengan perintah Allah SWT."),
          _createPageSyarat("Mengusap kepala",
              "Tata cara wudhu selanjutnya ialah mengusap kepala dari depan hingga ke bagian belakang kepala sebanyak satu kali. Ali bin Abi Thalib berkata, Aku melihat Nabi SAW mengusap kepalanya satu kali. (HR. Sahih Abu Dawud no.106)"),
          _createPageSyarat("Membersihkan kedua telinga",
              "Setelah mengusap kepala dilanjutkan dengan membersihkan kedua telinga tanpa perlu mengambil air baru. Membersihkan telinga dalam tata cara wudhu ini dilakukan dengan memasukan jari telunjuk ke dalam telinga, kemudian ibu jari mengusapkan kedua daun telinga. Hal ini dilakukan secara bersamaan antar telinga kanan dan telinga kiri."),
          _createPageSyarat(
              "Mencuci kedua kaki hingga di atas mata kaki",
              "Dan tata cara wudhu selanjutnya yang benar sesuai dengan sunnah ialah membasuh kedua kaki hingga di atas mata kaki. Hal ini dilakukan sebanyak 3 kali dan dimulai dari kaki bagian kanan terlebih dahulu. \n"
                  "Dalam HR Bukhari, dahulukan kaki kanan hingga tiga kali kemudian kaki kiri. Dan saat membasuh kaki, Rasulullah menggosok jari kelingkingnya pada sela-sela jari kaki (HR. Bukhari; Fathul Baari, dan Muslim). Dalam menggosok kaki Rasullullah menyuruh umatnya untuk berhati-hati, karena bila tidak sempurna dalam membasuhnya akan terkena ancaman neraka. Dan pastikan kulit yang terlipat terkena air wudhu."),
          _createPageSyarat("Membaca doa wudhu",
              "Setelah selesai rangkaian wudhu yang benar, disunnahkan untuk membaca doa selepas wudhu. Dan saat memanjatkan doa wudhu, sebaiknya berdoa dengan menghadap kiblat dan mengangkat dua tangan."),
        ],
      ),
    );
  }

  Widget _createPageSyarat(String nama, String desc) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(nama,
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
          ),
          Divider(
            thickness: 4.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              desc,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
