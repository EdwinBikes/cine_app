import 'package:cine_app/domain/domain.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;
  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actors>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
