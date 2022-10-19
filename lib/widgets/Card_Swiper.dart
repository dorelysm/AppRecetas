import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:recetas/models/model_category.dart';

class CardSwiper extends StatelessWidget{

  final List<ModeloCategoria> categorias;

  const CardSwiper({Key? key, required this.categorias}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screensize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(top: 8.0),
      child:  Swiper(
        itemCount: categorias.length,
        layout: SwiperLayout.STACK,
        itemWidth: _screensize.width * 0.7,
        itemHeight: _screensize.height * 0.9,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: NetworkImage(categorias[index].getImg()),
              fit: BoxFit.cover,
            ),
          );
        },

      ),
    );
  }

}