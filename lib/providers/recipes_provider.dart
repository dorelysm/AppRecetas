import 'package:http/http.dart' as http;
import 'package:recetas/models/model_recipe.dart';
import 'dart:convert';
import 'dart:async';

class RecetasProviders {
  //String strCategory = 
  final url = Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood");

  Future<List<ModeloRecetas>> getRecetas() async {
    final resp = await http.get(url);

    //List<ModeloRecetas> recetas = [];

    if (resp.statusCode == 200){

      String body = utf8.decode(resp.bodyBytes);

      final jsonData = jsonDecode(body);

      final recetas = Recetas.fromJsonList(jsonData);
      
      return recetas.items;
    }else{
      throw Exception("Ocurrio Algo ${resp.statusCode}");
    }

  }
}
