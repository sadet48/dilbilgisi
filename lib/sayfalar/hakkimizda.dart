import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:turkce_dilbilgisi/renk_olustur/renkler.dart';
import '../stil_olustur/styles.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Hakkimizda extends StatelessWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class MyStyle {
  static var normal = GoogleFonts.comfortaa(
    color: const Color.fromARGB(255, 0, 0, 0),
    fontSize: 20.0,
  );
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: isSwitched ? Renkler.beyaz : Renkler.lavantaLight,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hakkımızda", style: AppBarYazi.appbarYazi).animate().fadeIn(delay: const Duration(milliseconds: 500)),
          centerTitle: true,
          actions: [
            Row(
              children: [
                Text(
                  isSwitched ? 'AÇIK' : 'KOYU',
                ),
                Switch(
                  activeColor: Renkler.beyaz,
                  inactiveThumbColor: Renkler.lavantaLight,
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  inactiveTrackColor: Colors.white60,
                  activeTrackColor: Colors.lightGreen,
                ),
              ],
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              trailing: const Hero(
                tag: 'tag-1',
                child: Icon(
                  Icons.person,
                  color: Renkler.mavi,
                  size: 35,
                ),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SecondScreen(),
                ),
              ),
              title: Row(
                children: [
                  StreamBuilder(
                    stream: streamColor(),
                    builder:
                        (BuildContext context, AsyncSnapshot<Color> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return const Text("Veri gelmedi.");
                      } else {
                        return Text(
                          "Göster",
                          style: TextStyle(color: snapshot.data),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stream<Color> streamColor() {
    return Stream.periodic(const Duration(milliseconds: 1000), (count) {
      if (count % 2 == 0) {
        return Renkler.kirmizi;
      } else {
        return Renkler.lavanta;
      }
    });
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Sadet Sevinç",
          style: MyStyle.normal,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Hero(
              tag: 'tag-1',
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/images/sadet.jpg"),
                ),
              ),
            ),
             Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sadet Sevinç",
                    style: MyStyle.normal,
                  ),
                ),
              ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  DateFormat("dd.MM.yyyy").format(DateTime.now()),
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  DateFormat("kk:mm:ss").format(DateTime.now()),
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
