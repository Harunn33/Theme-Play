import 'package:get/get.dart';

mixin ValidatorsMixin {
  String? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return "This field is required";
    return null;
  }

  String? emailValidator(String? value) {
    String? requiredValidation = validator(value);
    if (requiredValidation != null) return requiredValidation;
    if (!value!.isEmail) return "Invalid email address";
    return null;
  }

  String? passwordValidator(String? value) {
    String? requiredValidation = validator(value);
    if (requiredValidation != null) return requiredValidation;
    return null;
  }

  String? rePasswordValidator(String? value, String? password) {
    String? requiredValidation = validator(value);
    if (requiredValidation != null) return requiredValidation;
    if (value != password) {
      return "Password does not match";
    }
    return null;
  }
}
