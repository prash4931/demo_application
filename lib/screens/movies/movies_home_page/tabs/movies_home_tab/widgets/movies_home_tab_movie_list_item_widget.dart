import 'package:flutter/material.dart';

import '../../../../../../models/movies/movies_item_model.dart';
import '../../../../movies_details_screen/movies_details_screen.dart';

class MoviesHomeTabMovieListItemWidget extends StatelessWidget {
  final MoviesItemModel item;
  const MoviesHomeTabMovieListItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MoviesDetailsScreen(
                      item: item,
                    );
                  },
                ));
              },
              child: Container(
                height: 350,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSHXdrHawmYFj-FZONDPl8AhvC4sWlLlY8r4X_bKC4VyRKRm8Yo',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                item.title ?? 'NA',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 32),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '8.2',
                  style: TextStyle(fontSize: 18),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
