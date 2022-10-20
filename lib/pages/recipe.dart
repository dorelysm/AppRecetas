import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:recetas/models/model_recipe.dart';
import 'package:recetas/providers/recipe_provider.dart';

class PageRecipe extends StatefulWidget {
  const PageRecipe({Key? key}) : super(key: key);

  @override
  State<PageRecipe> createState() => _PageRecipeState();
}

class _PageRecipeState extends State<PageRecipe> {
  late Future<List<ModeloRecetas>> _receta;
  final recetaProvider = RecetaProviders();

  @override
  void initState() {
    super.initState();
    final getProvider = RecetaProviders();
    _receta = getProvider.getRecetas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre de la receta'),
      ),
      body: FutureBuilder(
        future: _receta,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: ListView(
                children: <Widget>[
                  Center(
                      //child: Image(snapshot.data),
                      )
                ],
              ),
            );
          } else {
            print(snapshot.error);
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
