import 'package:cine_app/domain/entities/actors.dart';

abstract class ActorsDatasource {
  Future<List<Actors>> getActorsByMovie(String movieId);
}
