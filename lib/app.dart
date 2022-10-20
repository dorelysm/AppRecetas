import 'package:flutter/material.dart';

import 'package:recetas/pages/home_page.dart';
import 'package:recetas/pages/page_recipes.dart';
import 'package:recetas/pages/recipe.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de recetas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/recetas': (context) => const PageRecipes(),
        '/descripcion_receta': (context) => const PageRecipe(),
        //CardSwiper.routeName: (context) => const CardSwiper(categorias: [],),
      },
    );
  }
}
