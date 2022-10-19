import 'package:flutter/material.dart';
import 'package:recetas/models/model_recipe.dart';
import 'package:recetas/providers/recipes_provider.dart';

class PageRecipes extends StatefulWidget {
  const PageRecipes({Key? key}) : super(key: key);

  @override
  State<PageRecipes> createState() => _PageRecipesState();
}

class _PageRecipesState extends State<PageRecipes> {
  late Future<List<ModeloRecetas>> _ListRecetas;
  final recetasProviders = RecetasProviders();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('strCategory'),
      ),
    );
  }
/*
  Widget _ListRecetas(){
    return FutureBuilder(
      future: _
    );
  }
  */
}