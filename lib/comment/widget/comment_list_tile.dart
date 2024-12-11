import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/comment/comment_controller.dart';
import 'package:youtube_comment_classify/comment/domain/model/comment.dart';
import 'package:youtube_comment_classify/comment/widget/comment_info_bar.dart';
import 'package:youtube_comment_classify/comment/widget/comment_link_button.dart';
import 'package:youtube_comment_classify/core/config/context_extension.dart';

class CommentListTile extends StatelessWidget {
  const CommentListTile({super.key, required this.comment});
  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _decoration(context),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(comment.text),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommentInfoBar(comment: comment),
              CommentLinkButton(comment: comment),
            ],
          ),
        ],
      ),
    );
  }

  BoxDecoration _decoration(BuildContext context) {
    final controller = Get.find<CommentController>();

    return BoxDecoration(
      border: Border(
        left: BorderSide(
          width: 4,
          color: controller.getColorByCategory(comment.category),
        ),
      ),
      borderRadius: BorderRadius.circular(10),
      color: context.color.surfaceContainerLowest,
    );
  }
}
