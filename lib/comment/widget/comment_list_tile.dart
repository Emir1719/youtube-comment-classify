import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:youtube_comment_classify/comment/domain/model/comment.dart';
import 'package:youtube_comment_classify/core/config/context_extension.dart';

class CommentListTile extends StatelessWidget {
  const CommentListTile({super.key, required this.comment});
  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(left: BorderSide(width: 4, color: getColorByCategory(comment.category))),
        color: context.color.surfaceContainerLowest,
      ),
      child: ListTile(
        title: Text(comment.text),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(comment.category),
            Text(DateFormat('dd.MM.yyyy - HH:mm').format(comment.publishedAt)),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            print(comment.link);
          },
          icon: const Icon(Icons.link),
        ),
      ),
    );
  }

  Color getColorByCategory(String category) {
    switch (category) {
      case "Positive":
        return Colors.green;
      case "Negative":
        return Colors.red;
      case "Question":
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}
