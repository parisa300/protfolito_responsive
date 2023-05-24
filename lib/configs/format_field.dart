import 'package:flutter/services.dart';

class FormatField{

  static TextInputFormatter emailRegex =
  FilteringTextInputFormatter.allow(RegExp("[a-zA-Z0-9@.]"));

  static TextInputFormatter letterNumberRegex =
  FilteringTextInputFormatter.allow(
    RegExp("[a-zA-Z0-9!#\$%&'*+-/=?^_ `{|}~]"),
  );
}