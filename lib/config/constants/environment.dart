import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieDBKey =
      dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay API Key';
  static String theMovieDBUrlBase =
      dotenv.env['THE_MOVIEDB_BASE_URL'] ?? 'No hay URL Base';
  static String theMovieDBLanguage =
      dotenv.env['THE_MOVIEDB_LANGUAGE'] ?? 'No hay idioma seleccionado';
  static String theMovieDBImageUrl = dotenv.env['THE_MOVIEDB_IMAGE_URL'] ?? '';
  static String theMovieDBImageNotFound =
      dotenv.env['THE_MOVIEDB_IMAGE_NOT_FOUND'] ?? '';
  static String theMovieDBUserImageNotFound =
      dotenv.env['THE_MOVIEDB_USER_IMAGE_NOT_FOUND'] ?? '';
}
