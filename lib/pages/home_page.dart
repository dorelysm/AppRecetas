import 'package:flutter/material.dart';
import 'package:recetas/models/model_recipe.dart';
import 'package:recetas/providers/recetas_provider.dart';
import 'package:recetas/widgets/Card_Swiper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final recetasProviders = RecetasProviders();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de recetas'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[_SwipperTarjeta()],
      ),
    );
  }

  Widget _SwipperTarjeta() {
    return FutureBuilder(
        future: recetasProviders.getReceta(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return CardSwiper(recetas: snapshot.data as List<ModeloRecetas>);
          } else {
            return const CircularProgressIndicator();
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
