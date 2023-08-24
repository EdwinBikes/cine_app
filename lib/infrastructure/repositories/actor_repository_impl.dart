import 'package:cine_app/links_export.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;

  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actors>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
