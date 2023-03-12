import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/controllers/cubit.dart';
import 'package:projects/controllers/states.dart';
import 'package:projects/utilities/constants.dart';
import 'package:projects/utilities/routes/routes.dart';
import 'package:projects/view/widgets/card_movie.dart';

class DetailsScreen extends StatelessWidget {
  final Map movie;
  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit()..getSimilarMovies(id: movie["id"]),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            List<dynamic> similarMovies_ = AppCubit.get(context).similarMovies;

            return Scaffold(
              extendBodyBehindAppBar: true,
              extendBody: true,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                excludeHeaderSemantics: true,
              ),
              body: ListView(
                children: [
                  Stack(children: [
                    Image.network(
                      "https://image.tmdb.org/t/p/w500/${movie["backdrop_path"]}",
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                      height: 360,
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Constants.primaryColor.withOpacity(0.5),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, Routes.navbarRoute);
                                },
                                icon: const Icon(Icons.arrow_back_ios_new)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.bookmark_add_outlined)),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(movie["original_title"].toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Constants.textColor)),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("⭐ ${movie['vote_average']} / 10 from IMDb",
                                  style: Theme.of(context).textTheme.bodySmall),
                              const SizedBox(width: 30),
                              Text("👍 ${movie['popularity']} from users",
                                  style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text("Sinopsis",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Constants.textColor)),
                          const SizedBox(height: 10),
                          Text(movie['overview'],
                              style: Theme.of(context).textTheme.bodySmall),
                          const SizedBox(height: 20),
                          Text("Trailer",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Constants.textColor)),
                          const SizedBox(height: 10),
                          // vidoe
                          Text("Comments",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Constants.textColor)),
                          const SizedBox(height: 10),
                          // Api reviwe
                          Text("More Like This",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Constants.textColor)),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 200,
                            child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      width: 10,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemCount: similarMovies_.length,
                                itemBuilder: (context, index) =>
                                    CardMovie(movie: similarMovies_[index])),
                          ),
                        ]),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
