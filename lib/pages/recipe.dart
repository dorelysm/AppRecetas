import 'package:flutter/material.dart';

class PageRecipe extends StatefulWidget {
  const PageRecipe({Key? key}) : super(key: key);

  @override
  State<PageRecipe> createState() => _PageRecipeState();
}

class _PageRecipeState extends State<PageRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre de la receta'),
      ),
      //body: ,
    );
  }
}
