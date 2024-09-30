import 'package:flutter/material.dart';
import 'package:tugas2/page/add_book.dart';
import 'package:tugas2/page/profile.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        leading: const Icon(Icons.dashboard),
        backgroundColor: const Color.fromARGB(255, 65, 46, 33),
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
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
              _icon(),
              const SizedBox(height: 20),
              Text(
                "Haloo, ${widget.username}!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              _button(),
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

  Widget _button() {
    return Column(children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddBook();
          }));
        },
        child: Text("Add Book"),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            backgroundColor: const Color.fromARGB(255, 65, 46, 33),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            textStyle: const TextStyle(fontSize: 20)),
      ),
      const SizedBox(
        height: 12,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProfilePage();
          }));
        },
        child: Text("My Profile"),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            backgroundColor: const Color.fromARGB(255, 65, 46, 33),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            textStyle: const TextStyle(fontSize: 20)),
      )
    ]);
  }
}
