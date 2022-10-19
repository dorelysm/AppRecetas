class Categorias {
  List<ModeloCategoria> items = [];

  Categorias();

  Categorias.fromJsonList(jsonList){
    if(jsonList == null) return;
    for (var item in jsonList['categories']){
      final receta = ModeloCategoria.fromJsonMap(item);
      items.add(receta);
    }
  }
}

class ModeloCategoria{
  late String strCategory;
  late String strCategoryThumb;

  ModeloCategoria(this.strCategory, this.strCategoryThumb);

  ModeloCategoria.fromJsonMap(Map<String, dynamic> json){
    strCategory = json["strCategory"];
    strCategoryThumb = json["strCategoryThumb"];
  }
  getImg(){
      if (strCategoryThumb == null){
        return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
      }else{
        return strCategoryThumb;
      }
    }
}