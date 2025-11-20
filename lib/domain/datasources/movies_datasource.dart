import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieDatasource {
  Future<Movie> getPlayingNow({int page = 1});
}