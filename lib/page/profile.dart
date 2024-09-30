import 'package:flutter/material.dart';
import 'package:tugas2/page/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          backgroundColor: const Color.fromARGB(255, 65, 46, 33),
          foregroundColor: Colors.white,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24,
            ),
            child:  Center(
                child: Column(
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Image(image: AssetImage('assets/images/me.jpg')),
                const SizedBox(height: 12),
                const Text(
                  'Ayumi Fitriani Gailea',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "124220008",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Sukabumi, 22 November 20003',
                  style:  TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
               const Text(
                  "Menonton Film",
                  style:  TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 18,
                      ),
                      backgroundColor: const Color.fromARGB(255, 65, 46, 33),
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                      textStyle: const TextStyle(fontSize: 16)
                    ),
                  ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }), (route) => false);
                    },
                    child: Text("Logout", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 30,
                      ),
                      backgroundColor: const Color.fromARGB(255, 65, 46, 33),
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
                textStyle: const TextStyle(fontSize: 16)),
                      ),
              ]
            )]
            )
            )
    ));
  }
}
