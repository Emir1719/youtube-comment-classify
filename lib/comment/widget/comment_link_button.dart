import 'package:flutter/material.dart';
import 'package:youtube_comment_classify/comment/domain/model/comment.dart';

class CommentLinkButton extends StatelessWidget {
  const CommentLinkButton({super.key, required this.comment});
  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        print(comment.link);
      },
      tooltip: "Yorumu YouTube'de Göster",
      icon: const Icon(Icons.link),
    );
  }
}
