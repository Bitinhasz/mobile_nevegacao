import 'package:flutter/material.dart';

enum LoginPageModelStatus {
  Ended,
  Loading,
  Error
}

class LoginPageModel extends ChangeNotifier {
  LoginPageModelStatus _status;
  String _errorCode;
  String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  LoginPageModelStatus get status => _status;

  LoginPageModel();

  LoginPageModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = LoginPageModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = LoginPageModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
     _status = LoginPageModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = LoginPageModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = LoginPageModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = LoginPageModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = LoginPageModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = LoginPageModelStatus.Ended;
    notifyListeners();
  }
}