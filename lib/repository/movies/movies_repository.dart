import 'dart:convert';
import 'dart:developer';

import 'package:demo_application/core/core_http.dart';
import 'package:demo_application/core/endpoints.dart';
import 'package:demo_application/models/movies/movies_response_model.dart';
import 'package:demo_application/repository/movies/i_movies_repository.dart';

import '../../models/movies/movies_item_model.dart';

class MoviesRepository extends IMoviesRepository {
  @override
  Future<MoviesResponseModel?> getMovies() async {
    try {
      final url = EndPoints.moviesUrl;

      final response = await getHttp(url: url);

      log('✔️ getMovies\nurl: $url\nresponse: ${response.body}');

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);

        // final res = MoviesResponseModel.fromJson(result);

        List<MoviesItemModel>? temp =
            (result as List).map((e) => MoviesItemModel.fromJson(e)).toList();

        final res = MoviesResponseModel(movies: temp);

        return res;
      } else {
        return null;
      }
    } catch (e) {
      log('❌ Error in getMovies: $e');
      return null;
    }
  }
}
