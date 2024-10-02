import 'package:flutter/material.dart';

class MovieView extends StatelessWidget {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                children: [
                  Text("data"),
                  Text("data"),
                ],
              ),
            );
          }),
    );
  }
}
