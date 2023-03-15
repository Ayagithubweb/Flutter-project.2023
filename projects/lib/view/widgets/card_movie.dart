import 'package:flutter/material.dart';
// import 'package:projects/utilities/routes/routes.dart';

// ignore: must_be_immutable
class CardMovie extends StatelessWidget {
  Map movie;
  CardMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context, rootNavigator: true).pushNamed(Routes.detailsRoute);//ToDo: not -> arguments: movie, but ->  arguments:movie.id
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://image.tmdb.org/t/p/w500/${movie["backdrop_path"]}",
          fit: BoxFit.cover,
          width: 150,
          height: 200,
        ),
      ),
    );
  }
}
