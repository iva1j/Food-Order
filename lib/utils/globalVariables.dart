import 'package:flutter/material.dart';

var hasActiveConnection = false;
var allowUserToRegister = false;
var status = false;
bool inCart = false;

final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

TextEditingController emailInputController;
TextEditingController pwdInputController;
TextEditingController confirmPwdInputController;

registerInit() {
  emailInputController = new TextEditingController();
  pwdInputController = new TextEditingController();
  confirmPwdInputController = new TextEditingController();
}

loginInit() {
  emailInputController = new TextEditingController();
  pwdInputController = new TextEditingController();
}
