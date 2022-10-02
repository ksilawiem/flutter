import 'package:dio/dio.dart' as Dio;
import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/Services/dio.dart';

class Auth extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get authenticated => _isLoggedIn;

  void login({Map creds}) async {
   // Dio.Response = await dio().post(prefix);
    // print(creds);
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
