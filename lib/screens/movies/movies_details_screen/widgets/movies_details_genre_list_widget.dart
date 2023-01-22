import 'package:flutter/material.dart';

import '../../../../models/movies/movies_item_model.dart';

class MoviesDetailsGenreListWidget extends StatelessWidget {
  final MoviesItemModel item;
  const MoviesDetailsGenreListWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (item.genres != null && item.genres!.isNotEmpty)
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: item.genres!.length,
              itemBuilder: (context, index) {
                final genreItem = item.genres![index];
                return Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey[350]!)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Center(
                        child: Text(
                          genreItem ?? 'NA',
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
