import 'package:get/get.dart';
import 'package:youtube_comment_classify/comment/comment_bindings.dart';
import 'package:youtube_comment_classify/comment/comment_page.dart';

class AppRoute {
  static const home = "/";

  static route() {
    Transition? transition = Transition.native;

    return [
      GetPage(
        name: home,
        page: () => const CommentPage(),
        transition: transition,
        binding: CommentBindings(),
      ),
    ];
  }
}
