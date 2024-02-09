import 'package:adhkar/features/categories/categories.dart';
import 'package:adhkar/features/categories/cubit/categories_cubit.dart';
import 'package:adhkar/features/favorites/favorites.dart';
import 'package:adhkar/features/sebha/sebha.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Directionality(
          textDirection: TextDirection.rtl, child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController();
  int _position = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          BlocProvider<CategoriesCubit>(
            create: (context) => CategoriesCubit()..loadCategoires(),
            child: const Categories(),
          ),
          const Sebha(),
          const Favorites(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (position) {
            setState(() {
              _position = position;
            });
            controller.animateToPage(position,
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear);
          },
          currentIndex: _position,
          selectedItemColor: Colors.brown[800],
          selectedLabelStyle: GoogleFonts.amiri(fontSize: 15),
          unselectedLabelStyle: GoogleFonts.amiri(),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FlutterIslamicIcons.prayer),
              label: "الأذكار",
            ),
            BottomNavigationBarItem(
                icon: Icon(FlutterIslamicIcons.tasbih), label: "السبحة"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "المفضلة"),
          ]),
    );
  }
}
