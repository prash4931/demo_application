import 'package:demo_application/screens/movies/movies_details_screen/widgets/movie_details_cast_crew_widget.dart';
import 'package:demo_application/screens/movies/movies_details_screen/widgets/movies_details_genre_list_widget.dart';
import 'package:demo_application/screens/movies/movies_details_screen/widgets/movies_details_image_and_rating_widget.dart';
import 'package:demo_application/screens/movies/movies_details_screen/widgets/movies_details_plot_summary_widget.dart';
import 'package:demo_application/screens/movies/movies_details_screen/widgets/movies_details_title_description_widget.dart';
import 'package:flutter/material.dart';

import '../../../models/movies/movies_item_model.dart';

class MoviesDetailsScreen extends StatelessWidget {
  final MoviesItemModel item;
  const MoviesDetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MoviesDetailsImageAndRatingWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 32, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MoviesDetailsTitleDescriptionWidget(item: item),
                  MoviesDetailsGenreListWidget(item: item),
                  const MoviesDetailsPlotSummaryWidget(),
                  MovieDetailsCastCrewWidget(item: item),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
