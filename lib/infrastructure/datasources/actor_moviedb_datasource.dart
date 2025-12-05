import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';
import 'package:dio/dio.dart';

class ActorMoviedbDatasource extends ActorsDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: Environment.theMovieDBUrlBase,
      queryParameters: {
        'api_key': Environment.theMovieDBKey,
        'language': Environment.theMovieDBLanguage,
      },
    ),
  );

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    final response = await dio.get('movie/$movieId/credits');
    if (response.statusCode != 200) throw Exception('Movie with id $movieId not found!');

    final castList = CreditsResponse.fromJson(response.data);
    List<Actor> actors = castList.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();
    return actors;
  }
}
