import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("المفضلة",
            style:
                GoogleFonts.amiri(fontWeight: FontWeight.bold, fontSize: 25)),
        backgroundColor: Colors.brown[800],
        centerTitle: true,
      ),
    );
  }
}
