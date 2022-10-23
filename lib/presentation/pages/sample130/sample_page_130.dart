import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SamplePage130 extends StatefulWidget {
  const SamplePage130({
    super.key,
  });

  @override
  State<SamplePage130> createState() => _SamplePage130State();
}

class _SamplePage130State extends State<SamplePage130> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_rating_bar'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: RatingBar(
            minRating: 1,
            maxRating: 5,
            initialRating: 3,
            glow: false,
            onRatingUpdate: (value) {},
            ratingWidget: RatingWidget(
              full: const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              half: const Icon(Icons.star),
              empty: const Icon(
                Icons.star,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
