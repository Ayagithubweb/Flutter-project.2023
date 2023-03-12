// ignore: file_names
import 'package:flutter/material.dart';
import 'package:projects/utilities/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ListViewCarosel extends StatelessWidget {
  // List<Map<dynamic, dynamic>> items;
  const ListViewCarosel({super.key});

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
    //=> Image.network(items[index]['poster_path']));
  }
}
