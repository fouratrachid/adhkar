import 'package:adhkar/features/categories/cubit/categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الأذكار",
            style:
                GoogleFonts.amiri(fontWeight: FontWeight.bold, fontSize: 25)),
        backgroundColor: Colors.brown[800],
        centerTitle: true,
      ),
      body: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: switch (state) {
                CategoriesLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                CategoriesLoaded() => GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: state.categories
                        .map((e) => Card(
                                child: Center(
                                    child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                e,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ))))
                        .toList(),
                  ),
                CategoriesError() => Text(state.message),
                _ => const SizedBox.shrink()
              },
            ),
          );
        },
      ),
    );
  }
}
