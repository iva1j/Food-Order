import 'package:flutter/material.dart';

var hasActiveConnection = false;

final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

TextEditingController emailInputController;
TextEditingController pwdInputController;
TextEditingController confirmPwdInputController;

registerInit() {
  emailInputController = new TextEditingController();
  pwdInputController = new TextEditingController();
  confirmPwdInputController = new TextEditingController();
}
