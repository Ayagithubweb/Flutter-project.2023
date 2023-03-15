import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/controllers/states.dart';
import 'package:flutter/material.dart';
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
}
