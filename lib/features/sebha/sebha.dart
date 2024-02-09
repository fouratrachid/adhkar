import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("السبحة",
            style:
                GoogleFonts.amiri(fontWeight: FontWeight.bold, fontSize: 25)),
        backgroundColor: Colors.brown[800],
        centerTitle: true,
      ),
    );
  }
}
