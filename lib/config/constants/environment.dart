import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieDBKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay API Key';
  static String theMovieDBUrlBase = dotenv.env['THE_MOVIEDB_BASE_URL'] ?? 'No hay URL Base';
  static String theMovieDBLanguage = dotenv.env['THE_MOVIEDB_LANGUAGE'] ?? 'No hay idioma seleccionado';

}