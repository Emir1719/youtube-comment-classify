import 'package:dio/dio.dart';
import 'package:youtube_comment_classify/comment/domain/model/comment.dart';

class CommentService {
  final Dio _dio;

  CommentService(this._dio);

  Future<List<Comment>?> getCommentsByChannelName(String channelName, int day) async {
    try {
      final response = await _dio.post(
        "/channel",
        data: {"channel_name": channelName, "days": day},
      );
      List<dynamic>? data = response.data["data"];

      return data?.map((json) => Comment.fromJson(json)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<Comment>?> getCommentsByVideoUrl(String url) async {
    try {
      final response = await _dio.post("/video", data: {"url": url});
      List<dynamic>? data = response.data["data"];

      return data?.map((json) => Comment.fromJson(json)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
