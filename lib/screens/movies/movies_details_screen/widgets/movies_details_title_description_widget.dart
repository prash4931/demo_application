import 'package:flutter/material.dart';

import '../../../../models/movies/movies_item_model.dart';

class MoviesDetailsTitleDescriptionWidget extends StatelessWidget {
  final MoviesItemModel item;
  const MoviesDetailsTitleDescriptionWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title ?? 'NA',
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '${item.year ?? 'NA'}',
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'PG - 12',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    '2h 32 min',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              color: Colors.pink[300]!,
              borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 28,
          ),
        ),
      ],
    );
  }
}
