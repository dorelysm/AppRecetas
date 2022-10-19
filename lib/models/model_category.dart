class Categorias {
  List<ModeloCategoria> items = [];

  Categorias();

  Categorias.fromJsonList(jsonList){
    if(jsonList == null) return;
    for (var item in jsonList['meals']){
      final receta = ModeloCategoria.fromJsonMap(item);
      items.add(receta);
    }
  }
}

class ModeloCategoria{
  late String strCategory;

  ModeloCategoria(this.strCategory);

  ModeloCategoria.fromJsonMap(Map<String, dynamic> json){
    strCategory = json["strCategory"];
  }
}