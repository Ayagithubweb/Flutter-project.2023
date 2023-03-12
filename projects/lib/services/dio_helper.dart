import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/3/movie/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData(
      {required String path, required Map<String, dynamic> query}) async {
    return await dio!.get(path, queryParameters: query);
  }
}
