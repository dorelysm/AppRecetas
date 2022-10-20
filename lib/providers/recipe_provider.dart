import 'package:http/http.dart' as http;
import 'package:recetas/models/model_recipe.dart';
import 'dart:convert';
import 'dart:async';

class RecetaProviders {
  //String strCategory =
  final url =
      Uri.parse("www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata");

  Future<List<ModeloRecetas>> getRecetas() async {
    final resp = await http.get(url);

    //List<ModeloRecetas> recetas = [];

    if (resp.statusCode == 200) {
      String body = utf8.decode(resp.bodyBytes);

      final jsonData = jsonDecode(body);

      final receta = Recetas.fromJsonList(jsonData);

      return receta.items;
    } else {
      throw Exception("Ocurrio Algo ${resp.statusCode}");
    }
  }
}
