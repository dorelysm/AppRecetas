import 'package:flutter/material.dart';
import 'package:recetas/models/model_category.dart';
import 'package:recetas/models/model_recipe.dart';
import 'package:recetas/providers/recipes_provider.dart';
import 'package:recetas/widgets/listRecipes.dart';

class PageRecipes extends StatefulWidget {
  const PageRecipes({Key? key}) : super(key: key);

  @override
  State<PageRecipes> createState() => _PageRecipesState();
}

class _PageRecipesState extends State<PageRecipes> {
  late Future<List<ModeloRecetas>> _ListRecetas;
  final recetasProviders = RecetasProviders();
  
  //String get categoria => this.categorias;
  //late final String categoria;

  @override
  void initState() {
    super.initState();
    final getProvider = RecetasProviders();
    _ListRecetas = getProvider.getRecetas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre categoria'),
      ),
      body: FutureBuilder(
        future: _ListRecetas,
        builder: (context, snapshot){
          if (snapshot.hasData){
            return ListRecipes(recetas: snapshot.data as List<ModeloRecetas>);
          }else{
            print(snapshot.error);
            return Center(child: CircularProgressIndicator(),);
          }
        },
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