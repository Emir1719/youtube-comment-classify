import 'package:get/get.dart';
import './analytics_controller.dart';

class AnalyticsBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AnalyticsController());
    }
}