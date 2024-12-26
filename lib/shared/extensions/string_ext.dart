import 'package:theme_play/data/models/string_fill_parameter/string_fill_parameter_model.dart';

extension StringExt on String {
  String fillPlaceholders({
    required StringFillParameterModel model,
  }) {
    var result = this;
    model.toJson().forEach((key, value) {
      if (value == null) return;
      result = result.replaceAll('@$key', value.toString());
    });
    return result;
  }
}
