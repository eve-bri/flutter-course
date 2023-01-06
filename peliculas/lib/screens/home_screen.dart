import 'package:flutter/material.dart';
import 'package:peliculas/providers/movie_provider.dart';
import 'package:peliculas/search/search_delegate.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //listen es para redibujar cuando cambie algo. Por defecto es true
    final moviesProvides = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Películas en cines')),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () =>
                  showSearch(context: context, delegate: MovieSearchDelegate()),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Tarjetas de peliculas
              CardSwiper(movies: moviesProvides.onDisplayMovies),
              //Listado horizontal de películas
              MovieSlider(
                movies: moviesProvides.popularMovies,
                title: 'Populares',
                onNextPage: () => moviesProvides.getPoluarMovies(),
              ),
            ],
          ),
        ));
  }
}
