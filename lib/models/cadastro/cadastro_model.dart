import 'package:flutter/material.dart';

enum CadastroModelStatus {
  Ended,
  Loading,
  Error
}

class CadastroModel extends ChangeNotifier {
  CadastroModelStatus _status;
  String _errorCode;
  String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  CadastroModelStatus get status => _status;

  CadastroModel();

  CadastroModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = CadastroModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = CadastroModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
     _status = CadastroModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CadastroModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = CadastroModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CadastroModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = CadastroModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CadastroModelStatus.Ended;
    notifyListeners();
  }
}