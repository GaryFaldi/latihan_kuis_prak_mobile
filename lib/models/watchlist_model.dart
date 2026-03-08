import 'movie_model.dart';

class WatchlistModel {
  static List<MovieModel> savedMovies = [];

  static bool isSaved(MovieModel movie) {
    return savedMovies.any((m) => m.title == movie.title);
  }

  static void toggleSave(MovieModel movie) {
    if (isSaved(movie)) {
      savedMovies.removeWhere((m) => m.title == movie.title);
    } else {
      savedMovies.add(movie);
    }
  }
}
