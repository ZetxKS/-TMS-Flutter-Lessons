import 'package:flutter/material.dart';
import 'package:get_time_ago/get_time_ago.dart';

class ProfileReviews extends StatelessWidget {
  const ProfileReviews({Key? key}) : super(key: key);

  Widget _get_score_review(double score) {
    List<Widget> stars = [];
    const Color starColor = Color(0xFFFF9529);

    for (int i = 1; i <= score.floor(); i++) {
      stars.add(const Icon(Icons.star, color: starColor));
    }

    bool firsIteration = false;

    while (stars.length < 5) {
      if (firsIteration == false) {
        if ((score - score.floor()) > 0) {
          stars.add(const Icon(Icons.star_half, color: starColor));
        }
        firsIteration = true;
      } else {
        stars.add(const Icon(Icons.star_border, color: starColor));
      }
    }

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: stars,
      ),
    );
  }

  Widget _review(
      {required String author,
      required String dateReview,
      required String text,
      required String image,
      required double score}) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(48),
                    child: Image.network(image,
                        width: 48, height: 48, fit: BoxFit.cover)),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(author,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                    Text(GetTimeAgo.parse(DateTime.parse(dateReview)),
                        style: const TextStyle(fontSize: 12)),
                  ],
                ),
                _get_score_review(score)
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(text, style: const TextStyle(color: Color(0xFF625B71))),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Reviews",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            TextButton(
                onPressed: () => print("ALLOHA"),
                child: Text("View All", style: TextStyle(color: Color(0xFF6750A4)))
            )
          ],
        ),
        _review(
            author: 'Jinny Oslin',
            dateReview: '2023-03-02 01:18:04Z',
            text:
                'I highly recommend Dianne for any plumbing needs, he truly is an expert in his field.',
            image:
                'https://microsac.es/wp-content/uploads/2019/06/8V1z7D_t20_YX6vKm.jpg',
            score: 3.5),
      ],
    );
  }
}
