import 'package:flutter/material.dart';
import 'plush.dart';
import 'note.dart';

void main() {
  runApp(const mainNav());
}

class mainNav extends StatelessWidget {
  const mainNav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          secondary: Colors.amberAccent,
          tertiary: Color.fromARGB(255, 99, 110, 37),
          surface: Color.fromARGB(255, 51, 29, 0),
          brightness: Brightness.dark,
        ),
      ),
      title: 'Main Navigation',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Plushies()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Spinning Plush')],
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoteApp()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Note Food')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
