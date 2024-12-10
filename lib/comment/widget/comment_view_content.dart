import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:youtube_comment_classify/comment/comment_controller.dart';
import 'package:youtube_comment_classify/comment/widget/comment_list_tile.dart';

class CommentViewContent extends GetView<CommentController> {
  const CommentViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else {
        final comments = controller.comments ?? [];

        return ListView.separated(
          shrinkWrap: true,
          itemCount: comments.length,
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemBuilder: (context, index) {
            return CommentListTile(comment: comments[index]);
          },
        );
      }
    });
  }
}
