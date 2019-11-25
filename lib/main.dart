import 'package:flutter/material.dart';

import 'PembatalWudhu.dart';
import 'SyaratWajib.dart';
import 'TataCaraWudhu.dart';

void main() => runApp(TuntunanWudhu());

class TuntunanWudhu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 3.0)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.assignment_late),
            onPressed: () {
              openNewScreen(context, TataCaraWudhu());
            },
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 20.0),
              child: Text("Tuntunan",
                  style:
                      TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 5.0),
              child: Text("Puasa",
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                openNewScreen(context, SyaratWajib());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://cdn1-production-images-kly.akamaized.net/390LNShLxPTnLeVUuxXRVVXurZQ=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2793503/original/095241200_1556701555-iStock-942607186.jpg"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Syarat Puasa",
                          style: teksgaya,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                openNewScreen(context, PembatalWudhu());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://geotimes.co.id/wp-content/uploads/2017/08/ramadhan-2019-1.jpg"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Rukun Puasa",
                          style: teksgaya,
                        ),
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

  var teksgaya = TextStyle(
    fontSize: 35.0,
    color: Colors.white,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.bold,
  );

  backgroundImage(String imageURL) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            image: NetworkImage(imageURL)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
