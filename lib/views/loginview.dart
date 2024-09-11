import 'package:flutter/material.dart';
import 'package:navigasi_flutter/views/profileview.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("halaman Login"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text("Home"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Text("Home"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileView(
                    nama: "budi",
                    alamat: "malang",
                    juara: 1,
                  ),
                ),
              );
            },
            child: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
