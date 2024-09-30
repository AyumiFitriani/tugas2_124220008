import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  final String judul;
  final String pengarang;
  final String penerbit;
  final String tahunTerbit;
  const BookList(
      {super.key,
      required this.judul,
      required this.pengarang,
      required this.penerbit,
      this.tahunTerbit = ""});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Collection"),
        backgroundColor: const Color.fromARGB(255, 65, 46, 33),
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 65, 46, 33),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
          ]),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              judul + ' (' + tahunTerbit + ')',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        );
      }
      ),
    );
  }
}
