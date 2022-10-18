import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:recetas/models/model_recipe.dart';

class RecetasProviders {
  String _url = "https://www.themealdb.com";
  String _apiKey = "/1";
  String _consulta = "/random.php";

  Future<List<ModeloRecetas>> getReceta() async {
    final url = Uri.parse(_url + _apiKey + _consulta);
    final resp = await http.get(url);

    final decodeData = json.decode(resp.body);

    final recetas = new Recetas.fromJsonList(decodeData['meals']);
    return recetas.items;
  }
}
