import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adhkar extends StatelessWidget {
  final String category;

  const Adhkar({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category,
            style: GoogleFonts.amiri(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white)),
        backgroundColor: Colors.brown[800],
        centerTitle: true,
      ),
    );
  }
}
