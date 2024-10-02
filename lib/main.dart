import 'package:flutter/material.dart';
import 'package:navigasi_flutter/views/homeview.dart';
import 'package:navigasi_flutter/views/loginview.dart';
import 'package:navigasi_flutter/views/movie_view.dart';
import 'package:navigasi_flutter/views/profileview.dart';
import 'package:navigasi_flutter/views/transaksiview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => LoginView(),
        '/': (context) => HomeView(),
        '/transaksi': (context) => TransaksiView(),
        '/movie': (context) => MovieView(),
        // '/profile': (_) => ProfileView(),
      },
    );
  }
}
