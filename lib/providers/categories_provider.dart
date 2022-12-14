import 'package:http/http.dart' as http;
import 'package:recetas/models/model_category.dart';
import 'dart:convert';
import 'dart:async';

class CategoriasProviders {
  final url = Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php');

  Future<List<ModeloCategoria>> getCategories() async {
    final resp = await http.get(url);

    //List<ModeloRecetas> recetas = [];

    if (resp.statusCode == 200){

      String body = utf8.decode(resp.bodyBytes);

      final jsonData = jsonDecode(body);

      final categorias = Categorias.fromJsonList(jsonData);
      
      return categorias.items;
    }else{
      throw Exception("Ocurrio Algo ${resp.statusCode}");
    }

  }
}
