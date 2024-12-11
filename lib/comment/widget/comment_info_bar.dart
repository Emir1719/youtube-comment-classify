import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:youtube_comment_classify/comment/domain/model/comment.dart';
import 'package:youtube_comment_classify/comment/widget/copy_button.dart';
import 'package:youtube_comment_classify/core/config/context_extension.dart';

class CommentInfoBar extends StatelessWidget {
  const CommentInfoBar({super.key, required this.comment});
  final Comment comment;

  @override
  Widget build(BuildContext context) {
    final side = BorderSide(color: context.color.surfaceContainerHigh);
    final color = context.color.surfaceContainerLowest;
    const padding = EdgeInsets.zero;
    const space = SizedBox(width: 10);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Chip(
          side: side,
          padding: padding,
          backgroundColor: color,
          label: Text(comment.category, style: context.text.bodySmall),
        ),
        space,
        Chip(
          side: side,
          padding: padding,
          backgroundColor: color,
          label: Text(
            DateFormat('dd.MM.yyyy - HH:mm').format(comment.publishedAt),
            style: context.text.bodySmall,
          ),
        ),
        space,
        CopyButton(content: comment.text),
      ],
    );
  }
}
