import '../../globalVariables.dart';

String pwdValidator(String value) {
  if (value.length < 8) {
    return 'Password must be longer than 8 characters';
  }
  if (status != true) {
    return 'Email ili Password nisu tačni';
  } else {
    return null;
  }
}
