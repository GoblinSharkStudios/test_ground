import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pocetPiv = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //vrchni lista
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 211, 183, 24),
          title: const Center(child: Text("Beer Counter")),
        ),

        // telo
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 211, 183, 24),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              minimumSize: const Size(100, 100), //////// HERE
            ),
            onPressed: () {
              setState(() {
                pocetPiv++;
              });
            },
            child: Text(
              pocetPiv.toString(),
              style: TextStyle(
                fontSize: (50.0 + pocetPiv),
              ),
            ),
          ),
        ),

        // spodni lista
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 211, 183, 24),
          items: const [
            BottomNavigationBarItem(
              label: ("Settings"),
              icon: Icon(
                Icons.settings,
                color: Color.fromARGB(255, 105, 91, 12),
              ),
            ),
            BottomNavigationBarItem(
              label: ("Reset"),
              icon: Icon(
                Icons.restore_from_trash,
                color: Color.fromARGB(255, 105, 91, 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
