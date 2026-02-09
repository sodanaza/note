import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Plushies());
}
final Uri _url = Uri.parse("https://www.youtube.com/watch?v=dQw4w9WgXcQ");

class Plushies extends StatelessWidget {
  const Plushies({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Spinning Plush"),
      ),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _launchUrl,
                child: Image(
                  image: const AssetImage('assets/LowdPlushering.png'),
                  // Set width to 50% of the screen width
                  width: screenWidth * 0.5,
                  fit: BoxFit.contain,
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
