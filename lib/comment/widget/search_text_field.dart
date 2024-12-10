import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/comment/comment_controller.dart';
import 'package:youtube_comment_classify/comment/widget/search_button.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CommentController>();

    return TextFormField(
      controller: controller.channelName,
      onFieldSubmitted: (data) => controller.onTab(),
      decoration: const InputDecoration(
        suffixIcon: SearchButton(),
      ),
      textInputAction: TextInputAction.done,
    );
  }
}
