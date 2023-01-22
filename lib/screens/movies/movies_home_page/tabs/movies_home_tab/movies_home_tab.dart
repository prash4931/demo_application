import 'package:demo_application/screens/movies/movies_home_page/tabs/movies_home_tab/widgets/movies_home_tab_choice_chip_widget.dart';
import 'package:demo_application/screens/movies/movies_home_page/tabs/movies_home_tab/widgets/movies_home_tab_movie_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/movies/movies_provider.dart';

class MoviesHomeTab extends StatefulWidget {
  const MoviesHomeTab({super.key});

  @override
  State<MoviesHomeTab> createState() => _MoviesHomeTabState();
}

class _MoviesHomeTabState extends State<MoviesHomeTab> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<MoviesHomePageProvider>(context, listen: false).init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<MoviesHomePageProvider>(
        builder: (context, state, child) {
          if (state.isMoviesDataLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            children: [
              if (state.getGenresList.isNotEmpty) MoviesHomeTabChoiceChipWidget(genres: state.getGenresList,),
              if (state.movies.isEmpty)
                const Expanded(
                  child: Center(
                    child: Text('No Movies Available'),
                  ),
                )
              else
                MoviesHomeTabMovieListWidget(
                  movies: state.movies,
                )
            ],
          );
        },
      ),
    );
  }
}
