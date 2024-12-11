import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/comment/widget/category_sentiment.dart';
import 'package:youtube_comment_classify/comment/widget/comment_view_content.dart';
import 'package:youtube_comment_classify/comment/widget/search_text_field.dart';

import './comment_controller.dart';

class CommentPage extends GetView<CommentController> {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sözler Köşkü - Yorum Analizi')),
      body: ListView(
        padding: const EdgeInsets.all(40),
        children: const [
          SearchTextField(),
          SizedBox(height: 15),
          CategorySentiment(),
          SizedBox(height: 25),
          CommentViewContent(),
        ],
      ),
    );
  }
}
