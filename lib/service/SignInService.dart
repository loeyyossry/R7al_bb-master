import 'dart:convert';

import '../model/model.dart';
class SignInService {
  final String apiUrl = "https://example.com/api/signin";

  get http => null;

  Future<bool> signIn(SignInModel signInModel) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(signInModel.toJson()),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}