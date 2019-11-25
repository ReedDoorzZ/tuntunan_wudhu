import 'package:flutter/material.dart';

void main() => runApp(PembatalWudhu());

class PembatalWudhu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pembatal Wudhu"),
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
    "Keluar segala sesuatu dari dua jalan kemaluan (qubul dan dubur).",
    "Bersentuhan dengan lawan jenis yang bukan mahramnya dengan tidak memakai penutup.",
    "Hilang akal dikarenakan gila, tertidur, pingsan atau mabuk.",
    "Tersentuh kemaluan (kubul atau dubur) dengan tapak tangan atau jari yang tidak memakai penutup (walaupun kemaluan sendiri).",
    "Memakan daging unta, memakan babat, hati, lemak, ginjal atau perut besar juga bisa mengakibatkan batalnya wudhu.",
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
