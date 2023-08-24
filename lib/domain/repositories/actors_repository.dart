import 'package:cine_app/links_export.dart';

abstract class ActorsRepository {
  Future<List<Actors>> getActorsByMovie(String movieId);
}
