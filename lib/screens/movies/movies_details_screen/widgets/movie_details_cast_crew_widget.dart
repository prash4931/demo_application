import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../models/movies/movies_item_model.dart';

class MovieDetailsCastCrewWidget extends StatelessWidget {
  final MoviesItemModel item;
  const MovieDetailsCastCrewWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Cast & Crew',
            style: TextStyle(fontSize: 24),
          ),
        ),
        if (item.cast != null && item.cast!.isNotEmpty)
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: item.cast!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final castItem = item.cast![index];
                return Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                  child: SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.network(
                            'https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQtu0wjf1rFoK5Q4ax3SM6EEaLbAPkeoKcLKPSbIXtIvnQBcmEvsjyggHc25bCSqZwbrdnfyq2G12VxsEQ',
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          castItem ?? 'NA',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Director',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        else
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('No Cast Available'),
          )
      ],
    );
  }
}
