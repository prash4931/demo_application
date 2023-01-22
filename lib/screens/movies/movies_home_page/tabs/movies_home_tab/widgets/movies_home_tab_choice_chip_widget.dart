import 'package:flutter/material.dart';

class MoviesHomeTabChoiceChipWidget extends StatelessWidget {
  // final List<String> choiceChipList = ['Action', 'Crime', 'Drama', 'Comedy'];
  final List<String?> genres;
  const MoviesHomeTabChoiceChipWidget({super.key, required this.genres});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 30),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          // physics: NeverScrollableScrollPhysics(),
          itemCount: genres.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChoiceChip(
                  selectedColor: Colors.white,
                  disabledColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.grey[300]!)),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(genres[index] ?? 'NA'),
                  ),
                  selected: false),
            );
          },
        ),
      ),
    );
  }
}
