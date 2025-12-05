import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
    id: cast.id,
    name: cast.name,
    profilePath: cast.profilePath != null
        ? '${Environment.theMovieDBImageUrl}/${cast.profilePath}'
        : Environment.theMovieDBUserImageNotFound,
    character: cast.character,
  );
}
