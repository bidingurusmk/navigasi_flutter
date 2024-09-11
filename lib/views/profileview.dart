import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  String nama;
  String? alamat;
  int juara;
  ProfileView({
    super.key,
    required this.nama,
    this.alamat,
    required this.juara,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Profile:"),
          Text(nama),
          Text(alamat!),
          Text("${juara}"),
        ],
      ),
    );
  }
}
