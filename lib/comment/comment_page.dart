import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './comment_controller.dart';

class CommentPage extends GetView<CommentController> {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sözler Köşkü - Yorum Analizi')),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          TextFormField(controller: controller.channelName),
          TextFormField(controller: controller.day),
          ElevatedButton(
            onPressed: controller.getCommentsByChannelName,
            child: const Text("Tıkla"),
          ),
          Obx(() {
            if (controller.isLoading.value) {
              return const CircularProgressIndicator(); // Eğer yorumlar boş veya null ise, yükleniyor göstergesi
            } else {
              final comments = controller.comments.value ?? [];

              return Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(comments[index].text),
                      subtitle: Text(comments[index].category),
                    );
                  },
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
