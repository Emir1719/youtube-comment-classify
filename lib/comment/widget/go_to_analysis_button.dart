import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/core/config/app_route.dart';
import 'package:youtube_comment_classify/core/config/context_extension.dart';

class GoToAnalysisButton extends StatelessWidget {
  const GoToAnalysisButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.toNamed(AppRoute.analytics);
      },
      tooltip: "Analize Git",
      icon: const Icon(Icons.analytics_outlined),
      color: context.color.surfaceContainerHigh,
    );
  }
}
