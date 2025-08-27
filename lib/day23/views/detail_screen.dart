import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day23/models/character_model.dart';

class DetailScreen extends StatelessWidget {
  final Datum anime;
  // final Demographic animegenre;

  const DetailScreen({
    super.key,
    required this.anime,
    // required this.animegenre,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(anime.title ?? 'Anime Detail'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Card(
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            anime.trailer?.images?.mediumImageUrl ?? "",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                if (anime.genres != null && anime.genres!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      spacing: 6,
                      runSpacing: -8,
                      children: anime.genres!
                          .map(
                            (genre) => Chip(
                              // children: [Text(genre.name ?? '')],
                              label: Text(genre.name ?? ''),
                              backgroundColor: Colors.blue.shade100,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 5, 105, 255),
                  ),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     print("Text Rich Tapped");
                        //   },
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(text: (anime.rating ?? '')),
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          TextSpan(text: (anime.score ?? 0).toString()),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(anime.synopsis ?? ''),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
