import 'package:flutter/material.dart';
import 'package:tugas2/page/book_list.dart';

class AddBook extends StatefulWidget {
  const AddBook({super.key});
  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  String _judulBuku = "";
  String _pengarang = "";
  String _penerbit = "";
  String _tahunTerbit = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Book Collection"),
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Form Data Buku",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              _buildForm(),
              const SizedBox(height: 20),
              _buildButtonSubmit()
            ],
          ),
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 65, 46, 33), width: 3),
          shape: BoxShape.circle),
      child: const Icon(
        Icons.person,
        color: Color.fromARGB(255, 65, 46, 33),
        size: 80,
        weight: 15,
      ),
    );
  }

  Widget _formInput(
      {required String hint,
      required String label,
      required Function(String value) setStateInput,
      int maxLines = 1}) {
    return TextFormField(
      enabled: true,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.all(12.0),
        labelStyle: const TextStyle(color: Colors.black),
        fillColor: const Color.fromARGB(255, 255, 195, 127),
        filled: true,
        constraints: const BoxConstraints.tightFor(width: 350),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      onChanged: setStateInput,
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        const SizedBox(height: 12),
        _formInput(
            hint: "Masukkan Judul Buku",
            label: "Judul *",
            setStateInput: (value) {
              setState(() {
                _judulBuku = value;
              });
            }),
        const SizedBox(height: 12),
        _formInput(
            hint: "Nama Pengarang",
            label: "Pengarang *",
            setStateInput: (value) {
              setState(() {
                _pengarang = value;
              });
            }),
        const SizedBox(height: 12),
        _formInput(
            hint: "Instansi Penerbit",
            label: "Penerbit *",
            setStateInput: (value) {
              setState(() {
                _penerbit = value;
              });
            }),
        const SizedBox(height: 12),
        _formInput(
          hint: "Tahun Terbit",
          label: "Tahun Terbit *",
          setStateInput: (value) {
            setState(
              () {
                _tahunTerbit = value;
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildButtonSubmit() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          if (_judulBuku == "" || _pengarang == "" || _penerbit == "" || _tahunTerbit == "") {
            SnackBar snackBar = const SnackBar(
              content: Text("* data tidak boleh kosong"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BookList(
                judul: _judulBuku,
                pengarang: _pengarang,
                penerbit: _penerbit,
                tahunTerbit: _tahunTerbit,
              );
            }));
          }
        },
        child: Text(
          "Simpan",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 225, 190),
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
            backgroundColor: const Color.fromARGB(255, 65, 46, 33),
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            textStyle: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
