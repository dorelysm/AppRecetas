import 'package:flutter/material.dart';

import 'package:recetas/pages/home_page.dart';
import 'package:recetas/pages/page_recipes.dart';

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
        '/':(context) => const MyHomePage(),
        '/recetas':(context) => PageRecipes(),
        //CardSwiper.routeName: (context) => const CardSwiper(categorias: [],),
      },
    );
  }
}