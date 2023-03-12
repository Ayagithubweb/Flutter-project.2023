// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:projects/controllers/states.dart';
// import 'package:projects/services/dio_helper.dart';
// import 'package:projects/utilities/style.dart';
// import 'package:projects/view/screens/home_screen.dart';

// class AppCubit extends Cubit<AppStates> {
//   AppCubit() : super(IntiAppStates());
//   static AppCubit get(context) => BlocProvider.of(context);
//   //!~> Navbar logic ===========================================<
//   int currentIndex = 0;
//   List<String> titles = ['Home', 'Explore', 'Bookmark', 'User'];
//   List<Widget> screens = [
//     const HomeScreen(),
//     Scaffold(
//       body: Center(child: Text("Explore", style: TextStyling.titleStyle())),
//     ),
//     Scaffold(
//       body: Center(child: Text("Bookmark", style: TextStyling.titleStyle())),
//     ),
//     Scaffold(
//       body: Center(child: Text("User", style: TextStyling.titleStyle())),
//     ),
//   ];
//   void changeIndex(int index) {
//     currentIndex = index;
//     emit(AppChangeBottomNabBarState());
//   }

//   //!~> Api-fun ===========================================<
//   //*  getPopularMovies =============================================<
//   List<dynamic> popularMovies = []; //List<Map<dynamic, dynamic>>
//   void getPopularMovies() {
//     emit(GetPopularMoviesloadingState());
//     DioHelper.getData(url: 'popular', query: {
//       'api_key': 'd5c35e51c81488b19da7c1f572507a3d',//d5c35e51c81488b19da7c1f572507a3d
//       'language': 'en-US',
//       'page': 1
//     }).then((value) {
//       popularMovies = value.data['results']; //runtimeType
//       debugPrint('popularMovies No: ${popularMovies.length.toString()}');
//       // debugPrint(PopularMovies[3].toString());//.runtimeType.toString());
//       debugPrint(popularMovies[0]['original_title'].toString());
//       emit(GetPopularMoviesSuccessState());
//     }).catchError((err) {
//       debugPrint(err.toString());
//       emit(GetPopularMoviesErrorState(err));
//     });
//   }

// //*  upcomingMovies =============================================<
//   List<dynamic> upcomingMovies = [];
//   void getUpcomingMovies() {
//     emit(GetUpcomingMoviesloadingState());
//     // GetTopUpcomingMoviesloadingState
//     DioHelper.getData(url: 'upcoming', query: {
//       'api_key': 'd5c35e51c81488b19da7c1f572507a3d',
//       'language': 'en-US',
//       'page': 1
//     }).then((value) {
//       upcomingMovies = value.data['results']; //runtimeType
//       debugPrint(upcomingMovies.length.toString());
//       // debugPrint(upcomingMovies[3].toString());//.runtimeType.toString());
//       debugPrint(upcomingMovies[0]['original_title'].toString());
//       emit(GetUpcomingMoviesSuccessState());
//     }).catchError((err) {
//       debugPrint("error from getUpcomingMovies ::$err");
//       emit(GetUpcomingMoviesErrorState(err));
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/controllers/states.dart';
import 'package:projects/services/dio_helper.dart';
import 'package:projects/view/screens/bookmark_screen.dart';
import 'package:projects/view/screens/explore_screen.dart';
import 'package:projects/view/screens/home_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<String> titles = ['Home', 'Explore', 'Bookmark', 'User'];
  List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const BookmarkScreen(),
    const Scaffold(body: Center(child: Text("User"))),
  ];

  List<Map> castMovie = [];
  List<Map> reviewsMovie = [];
  List<Map> videosMovie = [];
// List<dynamic> similarMovies = [];

  // List<Map> topRatedMovies = [];
  // List<Map> upcomingMovies = [];
  var fromUpcomingMovies = '';
  var toUpcomingMovies = '';
  // List<Map> popularMovies = [];
  List<Map> newlyMovie = [];
  // List<Map> moviesInTheatres = [];
  var fromMoviesInTheatres = '';
  var toMoviesInTheatres = '';

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNabBarState());
  }

  //*  getPopularMovies =============================================<
  List<dynamic> popularMovies = []; //List<Map<dynamic, dynamic>>
  void getPopularMovies() {
    emit(GetPopularMoviesloadingState());
    DioHelper.getData(path: 'popular', query: {
      'api_key': 'd5c35e51c81488b19da7c1f572507a3d',
      'language': 'en-US',
      'page': 1
    }).then((value) {
      popularMovies = value.data['results']; //runtimeType
      debugPrint(popularMovies.length.toString());
      // debugPrint(PopularMovies[3].toString());//.runtimeType.toString());
      debugPrint(popularMovies[0]['original_title'].toString());
      emit(GetPopularMoviesSuccessState());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetPopularMoviesErrorState(err));
    });
  }

  //*  topRatedMovies =============================================<
  List<dynamic> topRatedMovies = []; //List<Map<dynamic, dynamic>>
  void getTopRatedMovies() {
    emit(GetTopRatedMoviesloadingState());
    DioHelper.getData(path: 'top_rated', query: {
      'api_key': 'd5c35e51c81488b19da7c1f572507a3d',
      'language': 'en-US',
      'page': 1
    }).then((value) {
      topRatedMovies = value.data['results']; //runtimeType
      debugPrint(topRatedMovies.length.toString());
      // debugPrint(topRatedMovies[3].toString());//.runtimeType.toString());
      debugPrint(topRatedMovies[0]['original_title'].toString());
      emit(GetTopRatedMoviesSuccessState());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetTopRatedMoviesErrorState(err));
    });
  }

  //*  upcomingMovies =============================================<
  List<dynamic> upcomingMovies = [];
  List upcomingMoviesImg = [];

  void getUpcomingMovies() {
    emit(GetUpcomingMoviesloadingState());
    // GetTopUpcomingMoviesloadingState
    DioHelper.getData(path: 'upcoming', query: {
      'api_key': 'd5c35e51c81488b19da7c1f572507a3d',
      'language': 'en-US',
      'page': 1
    }).then((value) {
      fromUpcomingMovies = value.data['dates']['minimum'];
      toUpcomingMovies = value.data['dates']['maximum'];

      upcomingMovies = value.data['results']; //runtimeType
      debugPrint(upcomingMovies.length.toString());
      // debugPrint(upcomingMovies[3].toString());//.runtimeType.toString());
      debugPrint(upcomingMovies[0]['original_title'].toString());
      for (var i = 0; i < upcomingMovies.length; i++) {
        upcomingMoviesImg.add(upcomingMovies[i]
            ["backdrop_path"]); //"https://image.tmdb.org/t/p/w500/" +
      }
      emit(GetUpcomingMoviesSuccessState());
    }).catchError((err) {
      debugPrint("error from getUpcomingMovies ::$err");
      emit(GetUpcomingMoviesErrorState(err));
    });
  }

//  int selectedPage=0;
  // final PageController _pageController = PageController(initialPage: selectedPage);
  final pageCount = 5;
  //*  moviesInTheatres =============================================<
  List<dynamic> moviesInTheatres = [];
  void getMoviesInTheatres() {
    emit(GetMoviesInTheatresloadingState());
    // GetTopMoviesInTheatresloadingState
    DioHelper.getData(path: 'now_playing', query: {
      'api_key': 'd5c35e51c81488b19da7c1f572507a3d',
      'language': 'en-US',
      'page': 1
    }).then((value) {
      fromMoviesInTheatres = value.data['dates']['minimum'];
      toMoviesInTheatres = value.data['dates']['maximum'];
      moviesInTheatres = value.data['results']; //runtimeType
      debugPrint(moviesInTheatres.length.toString());
      // debugPrint(moviesInTheatres[3].toString());//.runtimeType.toString());
      debugPrint(moviesInTheatres[0]['original_title'].toString());
      emit(GetMoviesInTheatresSuccessState());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetMoviesInTheatresErrorState(err));
    });
  }

  List<dynamic> similarMovies = []; //List<Map<dynamic, dynamic>>
  void getSimilarMovies({required id}) {
    emit(GetSimilarMoviesloadingState());
    DioHelper.getData(path: '$id/similar', query: {
      'api_key': 'd5c35e51c81488b19da7c1f572507a3d',
      'language': 'en-US',
      'page': 1
    }).then((value) {
      similarMovies = value.data['results']; //runtimeType
      debugPrint(similarMovies.length.toString());
      // debugPrint(similarMovies[3].toString());//.runtimeType.toString());
      debugPrint(similarMovies[0]['original_title'].toString());

      emit(GetSimilarMoviesSuccessState());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetSimilarMoviesErrorState(err));
    });
  }

//https://api.themoviedb.org/3/search/movie?api_key=d5c35e51c81488b19da7c1f572507a3d&language=en-US&query=man&page=1&include_adult=false
//*  moviesInTheatres =============================================<
  List<dynamic> searchedMovies = [];
  void SearchedMovies() {
    emit(GetMoviesInTheatresloadingState());
    // GetTopMoviesInTheatresloadingState
    DioHelper.getData(path: 'now_playing', query: {
      'api_key': 'd5c35e51c81488b19da7c1f572507a3d',
      'language': 'en-US',
      'page': 1
    }).then((value) {
      fromMoviesInTheatres = value.data['dates']['minimum'];
      toMoviesInTheatres = value.data['dates']['maximum'];
      moviesInTheatres = value.data['results']; //runtimeType
      debugPrint(moviesInTheatres.length.toString());
      // debugPrint(moviesInTheatres[3].toString());//.runtimeType.toString());
      debugPrint(moviesInTheatres[0]['original_title'].toString());
      emit(GetMoviesInTheatresSuccessState());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetMoviesInTheatresErrorState(err));
    });
  }
}
