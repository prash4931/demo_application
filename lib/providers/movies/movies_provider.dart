import 'dart:developer';

import 'package:demo_application/repository/movies/i_movies_repository.dart';
import 'package:demo_application/repository/movies/movies_repository.dart';
import 'package:flutter/material.dart';

import '../../models/movies/movies_item_model.dart';

class MoviesHomePageProvider extends ChangeNotifier {
  IMoviesRepository repository = MoviesRepository();

  List<MoviesItemModel?> movies = [];

  bool isMoviesDataLoading = false;

  List<String?> genres = [];

  // Init Method to clear & call repo
  init() {
    clearData();
    getMoviesList();
  }

  clearData() {
    if (movies.isNotEmpty) {
      movies.clear();
    }
    isMoviesDataLoading = true;
    notifyListeners();
  }

  List<String?> get getGenresList {
    final List<String?> genres = [];
    if (movies.isNotEmpty) {
      for (var element in movies) {
        if (element != null) {
          if (element.genres != null && element.genres!.isNotEmpty) {
            for (var ele in element.genres!) {
              if (ele != null) {
                if (!genres.contains(ele)) {
                  genres.add(ele);
                }
              }
            }
          }
        }
      }
    }
    return genres;
  }

  Future<void> getMoviesList() async {
    final response = await repository.getMovies();

    if (response?.movies != null && response!.movies!.isNotEmpty) {
      movies.addAll(response.movies!);
      notifyListeners();
    }
    isMoviesDataLoading = false;

    notifyListeners();
  }
}
