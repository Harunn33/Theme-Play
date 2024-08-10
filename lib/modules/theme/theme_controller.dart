import 'package:get/get.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/shared/constants/constants_instances.dart';

class ThemeController extends GetxController {
  final Map<String, dynamic> arguments = Get.arguments;

  late final UserThemeModel userThemeModel = arguments['model'];

  final ConstantsInstances constants = ConstantsInstances.instance;
}
