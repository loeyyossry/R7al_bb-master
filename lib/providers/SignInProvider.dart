import 'package:flutter/cupertino.dart';

import '../model/model.dart';

class SignInProvider with ChangeNotifier {
  SignInModel _signInModel = SignInModel(email: '', password: '');

  SignInModel get signInModel => _signInModel;

  void updateEmail(String email) {
    _signInModel = SignInModel(email: email, password: _signInModel.password);
    notifyListeners();
  }

  void updatePassword(String password) {
    _signInModel = SignInModel(email: _signInModel.email, password: password);
    notifyListeners();
  }
}
