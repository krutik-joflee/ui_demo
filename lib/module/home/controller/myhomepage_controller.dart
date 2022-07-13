import 'package:get/state_manager.dart';
import 'package:ui_demo/utils/enum/my_enum.dart';

class MyHomeScreenController extends GetxController {
  Rx<MyEnum> addEmoployeeStepper = Rx<MyEnum>(MyEnum.personal);
}
