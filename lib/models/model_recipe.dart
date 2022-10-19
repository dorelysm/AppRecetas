class Recetas {
  List<ModeloRecetas> items = [];

  Recetas();

  Recetas.fromJsonList(jsonList){
    if(jsonList == null) return;
    for (var item in jsonList['meals']){
      final receta = ModeloRecetas.fromJsonMap(item);
      items.add(receta);
    }
  }
}

class ModeloRecetas {
  late String meal;
  late String category;
  late String area;
  late String instructions;
  late String mealThumb;
  late String youtube;

  late String ingredient1;
  late String ingredient2;
  late String ingredient3;
  late String ingredient4;
  late String ingredient5;
  late String ingredient6;
  late String ingredient7;
  late String ingredient8;
  late String ingredient9;
  late String ingredient10;
  late String ingredient11;
  late String ingredient12;
  late String ingredient13;
  late String ingredient14;
  late String ingredient15;
  late String ingredient16;
  late String ingredient17;
  late String ingredient18;
  late String ingredient19;
  late String ingredient20;

  late String measure1;
  late String measure2;
  late String measure3;
  late String measure4;
  late String measure5;
  late String measure6;
  late String measure7;
  late String measure8;
  late String measure9;
  late String measure10;
  late String measure11;
  late String measure12;
  late String measure13;
  late String measure14;
  late String measure15;
  late String measure16;
  late String measure17;
  late String measure18;
  late String measure19;
  late String measure20;

  late String source;

  ModeloRecetas(this.meal,
    this.category,
    this.area,
    this.instructions,
    this.mealThumb,
    this.youtube,
    this.ingredient1,
    this.ingredient2,
    this.ingredient3,
    this.ingredient4,
    this.ingredient5,
    this.ingredient6,
    this.ingredient7,
    this.ingredient8,
    this.ingredient9,
    this.ingredient10,
    this.ingredient11,
    this.ingredient12,
    this.ingredient13,
    this.ingredient14,
    this.ingredient15,
    this.ingredient16,
    this.ingredient17,
    this.ingredient18,
    this.ingredient19,
    this.ingredient20,
    this.measure1,
    this.measure2,
    this.measure3,
    this.measure4,
    this.measure5,
    this.measure6,
    this.measure7,
    this.measure8,
    this.measure9,
    this.measure10,
    this.measure11,
    this.measure12,
    this.measure13,
    this.measure14,
    this.measure15,
    this.measure16,
    this.measure17,
    this.measure18,
    this.measure19,
    this.measure20,
    this.source);

    ModeloRecetas.fromJsonMap(Map<String, dynamic> json){
      meal = json['strMeal'];
      category = json['strCategory'];
      area = json['strArea'];
      instructions = json['strInstructions'];
      mealThumb = json['strMealThumb'];
      youtube = json['strYoutube'];
      ingredient1 = json['strIngredient1'];
      ingredient2 = json['strIngredient2'];
      ingredient3 = json['strIngredient3'];
      ingredient4 = json['strIngredient4'];
      ingredient5 = json['strIngredient5'];
      ingredient6 = json['strIngredient6'];
      ingredient7 = json['strIngredient7'];
      ingredient8 = json['strIngredient8'];
      ingredient9 = json['strIngredient9'];
      ingredient10 = json['strIngredient10'];
      ingredient11 = json['strIngredient11'];
      ingredient12 = json['strIngredient12'];
      ingredient13 = json['strIngredient13'];
      ingredient14 = json['strIngredient14'];
      ingredient15 = json['strIngredient15'];
      ingredient16 = json['strIngredient16'];
      ingredient17 = json['strIngredient17'];
      ingredient18 = json['strIngredient18'];
      ingredient19 = json['strIngredient19'];
      ingredient20 = json['strIngredient20'];
      measure1 = json['strMeasure1'];
      measure2 = json['strMeasure2'];
      measure3 = json['strMeasure3'];
      measure4 = json['strMeasure4'];
      measure5 = json['strMeasure5'];
      measure6 = json['strMeasure6'];
      measure7 = json['strMeasure7'];
      measure8 = json['strMeasure8'];
      measure9 = json['strMeasure9'];
      measure10 = json['strMeasure10'];
      measure11 = json['strMeasure11'];
      measure12 = json['strMeasure12'];
      measure13 = json['strMeasure13'];
      measure14 = json['strMeasure14'];
      measure15 = json['strMeasure15'];
      measure16 = json['strMeasure16'];
      measure17 = json['strMeasure17'];
      measure18 = json['strMeasure18'];
      measure19 = json['strMeasure19'];
      measure20 = json['strMeasure20'];
      source = json['strSourse'];
    }

    getImg(){
      if (mealThumb == null){
        return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
      }else{
        return mealThumb;
      }
    }
}