import 'package:flutter/material.dart';
import 'package:youtube_comment_classify/comment/widget/sentiment_count.dart';

class CategorySentiment extends StatelessWidget {
  const CategorySentiment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SentimentCount(category: "Positive"),
        SentimentCount(category: "Negative"),
        SentimentCount(category: "Question"),
      ],
    );
  }
}
