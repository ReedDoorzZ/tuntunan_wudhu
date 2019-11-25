import 'package:flutter/material.dart';

void main() => runApp(SyaratWajib());

class SyaratWajib extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Syarat Wajib Wudhu"),
          centerTitle: true,
        ),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> textindo = [
    "Beragama Islam.",
    "Suci dari hadast kecil dan besar.",
    "Dapat membedakan yang baik dan buruk.",
    "Tidak ada apapun yang dapat mengubah sifat air dan mencegah air masuk pada tubuh, seperti riasan, lipstik, cat kuku dan sebagainya.",
    "Mengetahui mana yang sunnah mana yang wajib.",
    "Air untuk berwudhu merupakan air bersih dan suci (tidak berbau, kotor ataupun tercampur bahan lainnya)."
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textindo.length,
        itemBuilder: (BuildContext context, int posisi) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(posisi.toString()),
                    Text(textindo[posisi])
                  ],
                ),
              ),
            ),
          );
        });
  }
}
