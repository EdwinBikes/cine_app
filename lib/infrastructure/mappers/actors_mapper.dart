import 'package:cine_app/domain/entities/actors.dart';
import 'package:cine_app/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actors castToEntity(Cast cast) => Actors(
        id: cast.id,
        name: cast.name,
        profilePath: cast.profilePath != null
            ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
            : 'https://sd.keepcalms.com/i-w600/keep-calm-poster-not-found.jpg',
        character: cast.character,
      );
}
