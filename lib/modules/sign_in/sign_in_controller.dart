import 'package:get/get.dart';
import 'package:theme_play/data/network/repository/auth/auth_repository.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/constants_instances.dart';
import 'package:theme_play/shared/constants/strings.dart';
import 'package:theme_play/shared/enums/sign_in_type.dart';

class SignInController extends GetxController {
  final ConstantsInstances _appConstants = ConstantsInstances.instance;

  AppStrings get appStrings => _appConstants.strings;
  AppColors get appColors => _appConstants.colors;

  Future<void> signInWithGoogle() async {
    final authRepository = AuthRepository.instance;
    await authRepository.signInWithProvider(
      provider: SignInType.google,
    );
  }
}
