import 'package:cine_app/domain/entities/actors.dart';

abstract class ActorsRepository {
  Future<List<Actors>> getActorsByMovie(String movieId);
}
