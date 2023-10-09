import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turkce_dilbilgisi/sayfalar/maniler.dart';
import 'package:turkce_dilbilgisi/sayfalar/time_picker.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class DigerIcerikler extends StatefulWidget {
  const DigerIcerikler({Key? key}) : super(key: key);

  @override
  State<DigerIcerikler> createState() => _DigerIceriklerState();
}

class _DigerIceriklerState extends State<DigerIcerikler> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const Konular()));
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: Text(
            "Diğer İçerikler",
            style: AppBarYazi.appbarYazi,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[

              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Maniler()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 300.0,
                  height:

                  .0,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text(
                    'Maniler',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.comfortaa(fontSize: 20.0),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const ShowTimePicker()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: Text(
                    'Time Picker',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.comfortaa(fontSize: 20.0),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
