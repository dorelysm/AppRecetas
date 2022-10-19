import 'package:flutter/material.dart';
import 'package:recetas/models/model_recipe.dart';
import 'package:recetas/providers/categories_provider.dart';
import 'package:recetas/widgets/Card_Swiper.dart';
import 'package:recetas/models/model_category.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<ModeloCategoria>> _listaCategorias;
  final recetasProviders = CategoriasProviders();


  @override
  void initState() {
    super.initState();
    final getProvider = CategoriasProviders();
    _listaCategorias = getProvider.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de recetas'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _listaCategorias,
        builder: (context, snapshot){
          if (snapshot.hasData){
            print(snapshot.data);
            return const Text('Hola');
          } else {
            print(snapshot.error);
            return CircularProgressIndicator();
          }
        },
      )
      //ListView(
        //children: <Widget>[_SwipperTarjeta()],
      //),
    );
  }

  Widget _SwipperTarjeta() {
    return FutureBuilder(
        future: _listaCategorias,
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return CardSwiper(categorias: snapshot.data as List<ModeloCategoria>);
          } else {
            return const Center(
              child: CircularProgressIndicator());
          }
        });
  }

  //Sin implementar
  itemList(image, item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      child: Card(
        elevation: 5,
        color: Colors.red,
        child: ListTile(leading: Image(image: image), title: item),
      ),
    );
  }
}
