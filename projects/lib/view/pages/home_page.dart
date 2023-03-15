import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/controllers/cubit.dart';
import 'package:projects/controllers/states.dart';
import 'package:projects/utilities/constants.dart';
import 'package:projects/view/widgets/card_movie.dart';
import 'package:projects/view/widgets/category_title.dart';
import 'package:projects/view/widgets/list_view_Carosel.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          // debugPrint(cubit.upcomingMovies.runtimeType.toString());
          // var upcomingMovies = cubit.upcomingMovies;
          // upcomingMovies = upcomingMovies as List<Map<String, dynamic>>;
          // debugPrint(upcomingMovies[0].runtimeType.toString());

          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: sizeWidth * 0.05),
                    const SizedBox(height: 220, child: ListViewCarosel()),
                    Padding(
                      padding: EdgeInsets.all(sizeWidth * 0.04),
                      child: Column(
                        children: [
                          const CategoryTitle(type: "Most Popular"),
                          ConditionalBuilder(
                            condition: state is! GetPopularMoviesloadingState ||
                                state is! GetPopularMoviesErrorState,
                            builder: (context) => SizedBox(
                              height: 200,
                              child: ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                        width: 10,
                                      ),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cubit.popularMovies.length,
                                  itemBuilder: (context, index) => CardMovie(
                                      movie: cubit.popularMovies[index])),
                            ),
                            fallback: (context) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          const CategoryTitle(type: "Coming Soon"),
                          Stack(
                            children: [
                              SizedBox(
                                height: 220,
                                child: PageView(
                                  controller: cubit.pageController,
                                  onPageChanged: (page) =>
                                      cubit.changePage(page),
                                  children:
                                      List.generate(cubit.pageCount, (index) {
                                    // print("ima${cubit.upcomingMoviesImg}");
                                    return Center(
                                        child: Text(
                                            'Page $index') /*ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          Constants.padding),
                                      child: Center(
                                          child: Text(
                                              cubit.upcomingMovies[index]
                                                  ["backdrop_path"])),*/
                                        //Image.network("https://image.tmdb.org/t/p/w500/${cubit.upcomingMovies[index]["backdrop_path"]}",fit: BoxFit.cover, ), //[0]["id"]
                                        );
                                  }),
                                ),
                              ),
                              Container(
                                // decoration: ,
                                width: double.infinity,
                                // color: Constants.primaryColor.withOpacity(0.8),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Constants.primaryColor
                                              .withOpacity(0.3),
                                          Constants.primaryColor.withOpacity(1),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: const [0.2, 0.8])),
                              ),
                              Positioned(
                                bottom: 15,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: PageViewDotIndicator(
                                    currentItem: cubit.selectedPage,
                                    count: cubit.pageCount,
                                    unselectedColor: Constants.textColor,
                                    selectedColor: Constants.secondColor,
                                    duration: const Duration(milliseconds: 200),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
