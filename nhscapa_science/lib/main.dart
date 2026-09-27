import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String mainTitle = "Science with Menon";
var primaryColour = const Color.fromARGB(255, 234, 98, 98);
var secondaryColour = const Color.fromARGB(255, 252, 250, 250);

void main() {
  runApp(const NHSCAPAScience());
}

class NHSCAPAScience extends StatelessWidget {
  const NHSCAPAScience({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: mainTitle,
      
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColour,
          titleTextStyle: GoogleFonts.alatsi(fontSize: 28, color: secondaryColour, fontWeight: FontWeight.w400),
        ),

      ),
      
      home: const HomePage(title: "Science with Menon"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Northmead - HSC Science"),
          ],
        ),
      ),
    );
  }
}
