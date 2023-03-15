abstract class AppStates {}

class IntiAppStates implements AppStates {}

class AppChangeBottomNabBarState implements AppStates {}

class GetPopularMoviesloadingState implements AppStates {}

class GetPopularMoviesSuccessState implements AppStates {}

class GetPopularMoviesErrorState implements AppStates {
  final String err;
  GetPopularMoviesErrorState({required this.err});
}

class GetUpcomingMoviesloadingState implements AppStates {}

class GetUpcomingMoviesSuccessState implements AppStates {}

class GetUpcomingMoviesErrorState implements AppStates {
  final String err;
  GetUpcomingMoviesErrorState({required this.err});
}
