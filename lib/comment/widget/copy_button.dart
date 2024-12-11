import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_comment_classify/core/config/context_extension.dart';

class CopyButton extends StatelessWidget {
  const CopyButton({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await Clipboard.setData(ClipboardData(text: content));
      },
      tooltip: "Yorumu Kopyala",
      icon: const Icon(Icons.copy, size: 20),
      color: context.color.surfaceContainerHigh,
    );
  }
}
