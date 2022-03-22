import 'package:flutter/material.dart';

class BackgroundImg extends StatelessWidget {
  const BackgroundImg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Hero(
      tag: 'background',
      child: Image(
        width: size.width,
        image: const NetworkImage(
            'https://www.pokemonfanclub.net/wp-content/uploads/pokemon-tv-series-1997-posters-the-movie-database.jpeg'),
        fit: BoxFit.cover,
      ),
    );
  }
}
