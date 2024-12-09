import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './comment_controller.dart';

class CommentPage extends GetView<CommentController> {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CommentPage'),
      ),
      body: Container(),
    );
  }
}
