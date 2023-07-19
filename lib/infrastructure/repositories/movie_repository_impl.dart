import 'package:cine_app/domain/entities/movie.dart';
import 'package:cine_app/infrastructure/datasources/moviedb_datasource.dart';

import '../../domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl extends MoviesRepository {
  final MoviedbDataSourse datasource;
  MoviesRepositoryImpl(this.datasource);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
