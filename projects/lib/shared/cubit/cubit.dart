import 'package:basics/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());
  static AppCubit get(context) => BlocProvider.of(context);
  
}
