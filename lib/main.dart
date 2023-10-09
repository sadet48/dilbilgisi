import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:turkce_dilbilgisi/renk_olustur/renkler.dart';
import 'package:turkce_dilbilgisi/sayfalar/ayarlar.dart';
import 'package:turkce_dilbilgisi/sayfalar/hakkimizda.dart';
import 'package:turkce_dilbilgisi/sayfalar/konular.dart';
import 'package:turkce_dilbilgisi/sayfalar/maniler.dart';
import 'package:turkce_dilbilgisi/sayfalar/splash_screen.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

final List<Widget> sayfalar = [
  const SplashScreen(),
  const Konular(),
  const Maniler(),
  const Hakkimizda(),
  const UygulamayiKapat(),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  int selectedIndex = 0;
  Color selectedColor = Renkler.lavanta;
  @override
  void initState() {
    Fluttertoast.showToast(msg: 'Hoşgeldiniz...', toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, backgroundColor: const
    Color.fromARGB(255, 45, 205, 225));
    super.initState();
  }
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: sayfalar[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          fontFamily: 'TTKB Dik Temel Abece',
        ),
        selectedItemColor: selectedColor,
        selectedFontSize: 16.0,
        backgroundColor: Colors.white,
        elevation: 10.0,
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home,size: 20), label: 'Ana Sayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.content_copy,size: 20), label: 'Konular'),
          BottomNavigationBarItem(icon: Icon(Icons.book_rounded,size: 20), label: 'Maniler'),
          BottomNavigationBarItem(icon: Icon(Icons.info,size: 20), label: 'Hakkımızda'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,size: 20), label: 'Ayarlar'),
        ],
      ),
    );
  }
}


