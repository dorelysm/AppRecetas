import 'package:flutter/material.dart';

import 'package:recetas/models/model_recipe.dart';

class ListRecipes extends StatelessWidget {
  final List<ModeloRecetas> recetas;

  const ListRecipes({Key? key, required this.recetas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screensize = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: recetas.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: Image(image: NetworkImage(recetas[index].getImg())),
            title: Text(recetas[index].meal),
            contentPadding: const EdgeInsets.all(20),
            onLongPress: () {},
          ),
        );
      },
    );
  }
}
