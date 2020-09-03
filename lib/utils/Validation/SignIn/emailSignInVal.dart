import 'package:FoodOrder/utils/globalVariables.dart';

String emailValidator(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.length == null || value == '') return 'Field cannot be empty';
  if (!regex.hasMatch(value)) {
    return 'Email format is invalid';
  }
  if (status != true) {
    return 'Email ili Password nisu tačni';
  } else {
    return null;
  }
}
