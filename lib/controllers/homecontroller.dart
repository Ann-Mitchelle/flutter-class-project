import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  var selectedPage = 0.obs;
  updateSelectedPage(index) {
    selectedPage.value = index;
  }
}
