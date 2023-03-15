import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projects/utilities/constants.dart';

class ListViewCaroselWithIndicator extends StatelessWidget {
  const ListViewCaroselWithIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Constants.carouselList.length,
      itemBuilder: (context, index) => CarouselSlider(
        options: Constants.options,
        items: Constants.carouselList
            .map((item) => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(item)))
            .toList(),
      ),
    );
  }
}
