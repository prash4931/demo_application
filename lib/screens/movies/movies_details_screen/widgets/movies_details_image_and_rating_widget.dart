import 'package:flutter/material.dart';

class MoviesDetailsImageAndRatingWidget extends StatelessWidget {
  const MoviesDetailsImageAndRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 350,
          width: double.infinity,
          child: ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(50)),
            child: Image.network(
              'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSHXdrHawmYFj-FZONDPl8AhvC4sWlLlY8r4X_bKC4VyRKRm8Yo',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 20,
            left: 20,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ))),
        Positioned(
          top: 295,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: SizedBox(
              height: 110,
              child: Card(
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 32,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '8.2/ 10',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '150,112',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.star_outline,
                          // color: Colors.yellow,
                          size: 32,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Rate This',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.green,
                          width: 30,
                          height: 30,
                          child: const Center(
                            child: Text(
                              '32',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'MetaScore',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '83 critic reviews',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
