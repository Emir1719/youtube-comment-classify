import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/comment/domain/model/comment.dart';
import 'package:youtube_comment_classify/comment/domain/repository/comment_service.dart';
import 'package:youtube_comment_classify/core/config/dependency_injection.dart';

class CommentController extends GetxController {
  final _commentService = getIt<CommentService>();
  final _comments = Rxn<List<Comment>>([]);
  var isLoading = false.obs; // Yükleniyor durumu

  final channelName = TextEditingController(text: "@sozlerkosku");
  final day = TextEditingController();

  void getCommentsByChannelName() async {
    try {
      isLoading(true);
      _comments.value = await _commentService.getCommentsByChannelName(
        channelName.text,
        int.tryParse(day.text) ?? 3,
      );
      isLoading(false);

      print(_comments.value?.length);
      print(_comments.value?.first.text);
    } catch (e) {
      print(e);
    }
  }

  Rxn<List<Comment>> get comments => _comments;
}
