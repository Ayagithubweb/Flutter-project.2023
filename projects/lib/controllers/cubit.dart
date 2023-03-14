import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/controllers/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(IntiAppStates());
  static AppCubit get(context) => BlocProvider.of(context);
}

