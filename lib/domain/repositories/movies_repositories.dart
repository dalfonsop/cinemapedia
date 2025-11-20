import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<Movie> getPlayingNow({int page = 1});
}
