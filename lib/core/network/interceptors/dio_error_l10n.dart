import 'package:flutter/cupertino.dart';
import 'package:hpm_portfolio/l10n/l10n.dart';

extension DioErrorExt on Exception {
  String localize(BuildContext context) {
    // Could switch case and runtime check to handle [DioError]
    // or custom exception here
    return context.l10n.networkErrorCommon;
  }
}
