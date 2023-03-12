// abstract class AppStates {}

// class IntiAppStates implements AppStates {}

// class AppChangeBottomNabBarState implements AppStates {}

// class GetPopularMoviesSuccessState extends AppStates {}

// class GetPopularMoviesErrorState extends AppStates {
//   final String err;
//   GetPopularMoviesErrorState(this.err);
// }

// class GetPopularMoviesloadingState extends AppStates {}

// class GetUpcomingMoviesSuccessState extends AppStates {}

// class GetUpcomingMoviesErrorState extends AppStates {
//   final String err;
//   GetUpcomingMoviesErrorState(this.err);
// }

// class GetUpcomingMoviesloadingState extends AppStates {}

abstract class AppStates {}

class AppInitState implements AppStates {}

class AppChangeBottomNabBarState implements AppStates {}

class GetSimilarMoviesSuccessState extends AppStates {}

class GetSimilarMoviesErrorState extends AppStates {
  final String err;
  GetSimilarMoviesErrorState(this.err);
}

class GetSimilarMoviesloadingState extends AppStates {}

class GetPopularMoviesSuccessState extends AppStates {}

class GetPopularMoviesErrorState extends AppStates {
  final String err;
  GetPopularMoviesErrorState(this.err);
}

class GetPopularMoviesloadingState extends AppStates {}

class GetTopRatedMoviesSuccessState extends AppStates {}

class GetTopRatedMoviesErrorState extends AppStates {
  final String err;
  GetTopRatedMoviesErrorState(this.err);
}

class GetTopRatedMoviesloadingState extends AppStates {}

class GetUpcomingMoviesSuccessState extends AppStates {}

class GetUpcomingMoviesErrorState extends AppStates {
  final String err;
  GetUpcomingMoviesErrorState(this.err);
}

class GetUpcomingMoviesloadingState extends AppStates {}

class GetMoviesInTheatresSuccessState extends AppStates {}

class GetMoviesInTheatresErrorState extends AppStates {
  final String err;
  GetMoviesInTheatresErrorState(this.err);
}

class GetMoviesInTheatresloadingState extends AppStates {}
