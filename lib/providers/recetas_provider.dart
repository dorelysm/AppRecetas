import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:recetas/models/model_recipe.dart';

class RecetasProviders {
  String _url = "https://www.themealdb.com";
  String _apiKey = "/1";
  String _consulta = "/random.php";

  final url = Uri.parse('www.themealdb.com/api/json/v1/1/filter.php?a=Canadian');

  Future<List<ModeloRecetas>> getReceta() async {
    //final url = Uri.parse(_url + _apiKey + _consulta);
    
    final resp = await http.get(url);

    //List<ModeloRecetas> recetas = [];

    if (resp.statusCode == 200){
      print(resp.body);
      String body = utf8.decode(resp.bodyBytes);

      final decodeData = json.decode(body);
      final recetas = Recetas.fromJsonList(decodeData);
      
      return recetas.items;
    }else{
      throw Exception("Ocurrio Algo ${resp.statusCode}");
    }

  }
}
