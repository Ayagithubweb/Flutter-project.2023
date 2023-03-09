import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/controllers/cubit.dart';
import 'package:projects/controllers/states.dart';
import 'package:projects/utilities/constants.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) =>
          AppCubit(), //..getPopularMovies()..getTopRatedMovies()..getUpcomingMovies()..getMoviesInTheatres(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Image.asset(
                Constants.logoImg,
                width: 50,
                fit: BoxFit.cover,
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () => debugPrint("Search"),
                ),
                IconButton(
                  icon: const Icon(Icons.filter_alt_outlined),
                  onPressed: () => debugPrint("filter"),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Constants.fourthColor,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Constants.secondColor,
                unselectedItemColor: Constants.textColor,
                currentIndex: cubit.currentIndex,
                onTap: (value) => cubit.changeIndex(value),
                items: const [
                  BottomNavigationBarItem(
                      label: 'home',
                      icon: Icon(
                        Icons.home_filled,
                      )),
                  BottomNavigationBarItem(
                      label: 'explore', icon: Icon(Icons.explore)),
                  BottomNavigationBarItem(
                      label: 'bookmark',
                      icon: Icon(Icons.bookmark_add_outlined)),
                  BottomNavigationBarItem(
                      label: 'user', icon: Icon(Icons.person)),
                ]),
            body: cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
