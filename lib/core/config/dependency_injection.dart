import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:youtube_comment_classify/comment/domain/repository/comment_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton<CommentService>(() => CommentService(
        Dio(BaseOptions(baseUrl: "http://127.0.0.1:5000/comments/")),
      ));
}
