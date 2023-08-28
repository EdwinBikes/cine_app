import 'package:cine_app/links_export.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
        id: cast.id,
        name: cast.name,
        profilePath: cast.profilePath != null
            ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
            : 'https://img.freepik.com/fotos-premium/persona-desconocida-silueta-masculina_68747-222.jpg',
        character: cast.character,
      );
}
