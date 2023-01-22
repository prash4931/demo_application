import 'package:demo_application/screens/movies/movies_home_page/tabs/movies_home_tab/widgets/movies_home_tab_movie_list_item_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../../models/movies/movies_item_model.dart';

class MoviesHomeTabMovieListWidget extends StatelessWidget {
  final List<MoviesItemModel?> movies;
  const MoviesHomeTabMovieListWidget({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final item = movies[index];
          if (item != null) {
            return MoviesHomeTabMovieListItemWidget(
              item: item,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
