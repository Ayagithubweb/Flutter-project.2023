import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/controllers/states.dart';
import 'package:flutter/material.dart';
import 'package:projects/services/dio_helper.dart';
import 'package:projects/utilities/style.dart';
import 'package:projects/view/pages/home_page.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(IntiAppStates());
  static AppCubit get(context) => BlocProvider.of(context);
  //!~> Navbar logic ===========================================<
  int currentIndex = 0;
  List<String> titles = ['Home', 'Explore', 'Bookmark', 'User'];
  List<Widget> screens = [
    // const (),
    const HomePage(),
    Scaffold(
      body: Center(child: Text("Explore", style: TextStyling.titleStyle())),
    ),
    Scaffold(
      body: Center(child: Text("Bookmark", style: TextStyling.titleStyle())),
    ),
    Scaffold(
      body: Center(child: Text("User", style: TextStyling.titleStyle())),
    ),
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNabBarState());
  }

  //!~> Api-fun ===========================================<
  //*  getPopularMovies =============================================<
  List<dynamic> popularMovies = []; //List<Map<dynamic, dynamic>>
  void getPopularMovies() {
    emit(GetPopularMoviesloadingState());
    DioHelper.getData(path: '3/movie/popular', queryParameters: {
      'api_key':
          'd5c35e51c81488b19da7c1f572507a3d', //d5c35e51c81488b19da7c1f572507a3d
      'language': 'en-US',
      'page': 1
    }).then((value) {
      popularMovies = value.data['results']; //runtimeType
      debugPrint('popularMovies No: ${popularMovies.length.toString()}');
      // debugPrint(PopularMovies[3].toString());//.runtimeType.toString());
      debugPrint(popularMovies[0]['original_title'].toString());
      emit(GetPopularMoviesSuccessState());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetPopularMoviesErrorState(err: err));
    });
  }

//* upcomingMovies =============================================<
  late int selectedPage;
  late final PageController pageController;
  int pageCount = 20;
  void initPage() {
    selectedPage = 0;
    pageController = PageController(initialPage: selectedPage);
    getUpcomingMovies();
  }

  void changePage(int val) {
    selectedPage = val;
  }

  List<dynamic> upcomingMovies = [];
  void getUpcomingMovies() {
    emit(GetUpcomingMoviesloadingState());
    // GetTopUpcomingMoviesloadingState
    DioHelper.getData(path: '3/movie/upcoming', queryParameters: {
      'api_key': 'd5c35e51c81488b19da7c1f572507a3d',
      'language': 'en-US',
      'page': 1
    }).then((value) {
      upcomingMovies = value.data['results']; //runtimeType
      debugPrint(upcomingMovies.length.toString());
      // debugPrint(upcomingMovies[3].toString());//.runtimeType.toString());
      debugPrint(upcomingMovies[0]['original_title'].toString());
      emit(GetUpcomingMoviesSuccessState());
    }).catchError((err) {
      debugPrint("error from getUpcomingMovies ::$err");
      emit(GetUpcomingMoviesErrorState(err: err));
    });
  }
}
