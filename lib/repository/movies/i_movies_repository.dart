import '../../models/movies/movies_response_model.dart';

abstract class IMoviesRepository {
  Future<MoviesResponseModel?> getMovies();
}