import 'package:flutter/material.dart';
import 'package:navigasi_flutter/views/homeview.dart';
import 'package:navigasi_flutter/views/loginview.dart';
import 'package:navigasi_flutter/views/profileview.dart';

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
        '/login': (_) => LoginView(),
        '/': (_) => HomeView(),
        // '/profile': (_) => ProfileView(),
      },
    );
  }
}
