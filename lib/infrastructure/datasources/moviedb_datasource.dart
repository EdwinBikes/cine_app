import 'package:cine_app/config/constants/environment.dart';
import 'package:cine_app/domain/datasources/datasources.dart';
import 'package:cine_app/domain/entities/movie.dart';
import 'package:cine_app/infrastructure/mappers/movie_mapper.dart';
import 'package:cine_app/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDataSourse extends MovieDataSource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.movieDbKey,
        'lenguaje': 'es-MX'
      }));
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final moviedbResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = moviedbResponse.results
        .where((moviedb) =>
            moviedb.posterPath !=
            'no_poster') //si no existe la imagen de poster de la API este codigo no crearia esa pelicula
        .map((moviedb) => MovieMApper.movieDBToEntity(moviedb))
        .toList();
    return movies;
  }
}
