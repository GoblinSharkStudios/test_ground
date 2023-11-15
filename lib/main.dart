import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 211, 183, 24),
          title: const Center(child: Text("Beer Counter")),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text("pivíčko"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 211, 183, 24),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 211, 183, 24),
          items: const [
            BottomNavigationBarItem(
              label: ("Home"),
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 105, 91, 12),
              ),
            ),
            BottomNavigationBarItem(
              label: ("Settings"),
              icon: Icon(
                Icons.settings,
                color: Color.fromARGB(255, 105, 91, 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
