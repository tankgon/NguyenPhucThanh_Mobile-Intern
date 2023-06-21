import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../models/story.dart';

class StoryView extends StatelessWidget {
  const StoryView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: size.height / 2.5,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
      ),
      items: jokeStory
          .map((item) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                child: Text(item.content),
              ))
          .toList(),
    );
  }
}
