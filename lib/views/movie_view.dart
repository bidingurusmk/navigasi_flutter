import 'package:flutter/material.dart';
import 'package:navigasi_flutter/controllers/movie_controller.dart';
import 'package:navigasi_flutter/models/movie.dart';
import 'package:navigasi_flutter/widgets/modal.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  final formKey = GlobalKey<FormState>();
  MovieController movie = MovieController();
  TextEditingController title = TextEditingController();
  TextEditingController gambar = TextEditingController();
  TextEditingController voteAverage = TextEditingController();
  List buttonChoice = ["Updaate", "Hapus"];
  List? film;
  getFilm() {
    setState(() {
      film = movie.movie;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFilm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        actions: [
          IconButton(
              onPressed: () {
                title.text = '';
                gambar.text = '';
                voteAverage.text = '';
                ModalWidget().showFullModal(context, addItem());
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: film!.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image(image: AssetImage(film![index].posterPath)),
                title: Text(film![index].title),
                trailing: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return buttonChoice.map((r) {
                      return PopupMenuItem(
                        value: r,
                        child: Text(r),
                        onTap: () {
                          if (r == "Update") {
                          } else if (r == "Hapus") {
                            film!.removeWhere((item) => item.id == index);
                            getFilm();
                          }
                        },
                      );
                    }).toList();
                  },
                ),
              ),
            );
          }),
    );
  }

  Widget addItem() {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
                controller: title,
                decoration: InputDecoration(label: Text("Title")),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'harus diisi';
                  } else {
                    return null;
                  }
                }),
            TextFormField(
                controller: gambar,
                decoration: InputDecoration(label: Text("Gambar")),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'harus diisi';
                  } else {
                    return null;
                  }
                }),
            TextFormField(
                controller: voteAverage,
                decoration: InputDecoration(label: Text("VoteAverage")),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'harus diisi';
                  } else {
                    return null;
                  }
                }),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    film!.add(MovieModel(
                      id: 2,
                      title: title.text,
                      posterPath: gambar.text,
                      voteAverage: double.parse(voteAverage.text),
                    ));
                    getFilm();
                    Navigator.pop(context);
                  }
                },
                child: Text("Simpan"))
          ],
        ),
      ),
    );
  }
}
