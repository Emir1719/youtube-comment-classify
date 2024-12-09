import 'package:get/get.dart';

import './comment_controller.dart';

class CommentBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(CommentController());
  }
}
