import 'package:flutter/material.dart';
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
  final categoriasProviders = CategoriasProviders();


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
      body: ListView(
          children: <Widget>[
            const Center(child: Text('Categorias')),
            _SwipperTarjeta()],
        ),
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
}
