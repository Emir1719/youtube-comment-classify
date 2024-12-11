import 'package:get/get.dart';
import 'package:youtube_comment_classify/analytics/analytics_bindings.dart';
import 'package:youtube_comment_classify/analytics/analytics_page.dart';
import 'package:youtube_comment_classify/comment/comment_bindings.dart';
import 'package:youtube_comment_classify/comment/comment_page.dart';

class AppRoute {
  static const home = "/";
  static const analytics = "/analytics";

  static route() {
    Transition? transition = Transition.native;

    return [
      GetPage(
        name: home,
        page: () => const CommentPage(),
        transition: transition,
        binding: CommentBindings(),
      ),
      GetPage(
        name: analytics,
        page: () => const AnalyticsPage(),
        transition: transition,
        binding: AnalyticsBindings(),
      ),
    ];
  }
}
