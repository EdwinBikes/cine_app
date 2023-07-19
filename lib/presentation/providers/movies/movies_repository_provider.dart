import 'package:cine_app/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cine_app/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// este repositorio es inmutable y su objetivo es basicamente proporcionar a todos los demas provider, es consultar la informacion de repositoryimpl
final movieRepositoryProvider = Provider((ref) {
  return MoviesRepositoryImpl(MoviedbDataSourse());
});
